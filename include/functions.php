<?php

include_once('include/config.php');


function get_db_handle() {
	global $db_config;
	return new PDO($db_config['host'], $db_config['user'], $db_config['password']);
}

function get_all_notes($psql, $where = '') {
	$query = "SELECT *
		FROM note ";
	$query .= ' '.$where.' ';
	$query .= ' ORDER BY id ASC';
	$sth = $psql->prepare($query);
	$sth->execute(array());
	$result = $sth->fetchAll();
	return $result;
}

function get_all_notes_with_categories($psql) {
	/*
	 * Want to return:
	 {
		 id: {
			smaller: "",
			content: "",
			research: "",
			category: [2,3], //assuming the client side has a map of categories
		},
	}
	 */
	$notes_info = array();
	$all_notes = get_all_notes($psql);
	foreach ($all_notes as $id => $notes) {
		$notes_info[$notes['id']] = array(
			'smaller' => $notes['smaller'],
			'content' => $notes['content'],
			'research' => $notes['research'],
			'category' => array()
		);
		$note_sections = get_note_categories($notes['id'], $psql);
		foreach ($note_sections as $cat) {
			$notes_info[$notes['id']]['category'][] = $cat['id'];
		}
	}
	return $notes_info;
}

function get_all_categories($psql) {
	$query = "SELECT *
		FROM categories ORDER BY category ASC";
	$sth = $psql->prepare($query);
	$sth->execute(array());
	$result = $sth->fetchAll();
	return $result;
}


function get_category_definition($filter, $psql) {
	$query = "SELECT *
		FROM categories
		WHERE id=?";
	$sth = $psql->prepare($query);
	$sth->execute(array($filter));
	$result = $sth->fetchAll();
	return $result;
}

function get_note_categories($note_id, $psql) {
	$query = "SELECT *
		FROM notes_categories,categories
		WHERE note_id=? AND categories.id = category_id";
	$sth = $psql->prepare($query);
	$sth->execute(array($note_id));
	$result = $sth->fetchAll();
	return $result;

}


function add_note($content, $smaller, $research, $psql) {
	$query = "INSERT INTO note
		(content, smaller, research) values(?,?,?)";
	$sth = $psql->prepare($query);
	$result = $sth->execute(array($content, $smaller, $research));
	return $result;
}

function get_id_from_content($content, $psql) {
	$query = "SELECT id
		FROM note WHERE content=? LIMIT 1";
	$sth = $psql->prepare($query);
	$sth->execute(array($content));
	$result = $sth->fetchAll();
	return $result[0]['id'];
}

function add_section($note_id, $sec_id, $psql) {
	$query = "INSERT INTO notes_categories
		(note_id, category_id) values(?,?)";
	$sth = $psql->prepare($query);
	$result = $sth->execute(array($note_id, $sec_id));
	return $result;
}


function startsWith($haystack, $needle) {
	// search backwards starting from haystack length characters from the end
	return $needle === "" || strrpos($haystack, $needle, -strlen($haystack)) !== FALSE;
}
function endsWith($haystack, $needle) {
	// search forward starting from end minus needle length characters
	return $needle === "" || (($temp = strlen($haystack) - strlen($needle)) >= 0 && strpos($haystack, $needle, $temp) !== FALSE);
}

