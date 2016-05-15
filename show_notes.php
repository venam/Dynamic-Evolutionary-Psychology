<?php

include_once("functions.php");
$dbConnection = get_db_handle();

$filter = '';

if (isset($_GET['filter'])) {
	$filter = $_GET['filter'];
}

$all_notes = get_all_notes($dbConnection);
?>

<!doctype html>
<html>
<head>
<meta charset='utf-8' />
<meta author='Patrick Louis & Reine Chbat' />
<title>Dynamic Evolutionary Psychology - Data Check Page</title>
<style>

body {
	margin: 0px auto;
	width 100%;
	background-color: #FFF;
	color: #212121;
	font-family: monospace;
	font-size: 20px;
}

.content {
	width: 60%;
	margin: auto;
}

.definition {
	margin: 30px;
	margin-left: 0px;
}

.definition_title {
	font-size: 25px;
	font-weight: bold;
}

.title {
	text-align: center;
	text-decoration: underline;
	margin-bottom: 40px;
}

textarea {
	background-color: #FFF;
	color: #212121;
	border: none;
	border: 1px solid #212121;
	padding: 10px;
	box-shadow: 1px 1px 2px #212121;
}

label {
	display: block;
	margin-top: 20px;
	margin-bottom: 20px;
	font-size: 25px;
	font-weight: bold;
}

input, textarea, select {
	width: 100%;
	font-size: 20px;
}

.note_content {
	margin-bottom: 80px;
}

select {
	font-size: 20px;
	height: 200px;
	background-color: #FFF;
	color: #212121;
	border: none;
	border: 1px solid #212121;
}

input {
	margin-top: 20px;
	background-color: #FFF;
	border: 1px solid #212121;
	color: #212121;
	margin-bottom: 50px;
	padding: 10px;
}

.status {
	color: green;
}

.categories {
	float: right;
	margin-bottom: 20px;
}

.research {
	font-size: 13px;
}

hr {
	margin-bottom: 40px;
}

</style>
</head>
<body>
	<div class="content">
		<h1 class="title">Dyn.EP Check Page</h1>

<?php
	
	if ($filter != '') {
		$definition = get_category_definition($filter, $dbConnection);
		echo "<div class='definition'>";
		echo "<div class='definition_title'>";
		echo "Selected -> ";
		echo $definition[0]['category'];
		echo "</div>";
		echo $definition[0]['definition'];
		echo "</div>";

	}
?>


		<label>Categories</label>
		<select id='categories' name="category" multiple>
		<option value=''>None</option>
		<?php
			$all_categories = get_all_categories($dbConnection);
			foreach ($all_categories as $id => $cat) {
				echo "<option value='";
				echo $cat['id'];
				echo "'>";
				echo $cat['category'];
				echo "</option>";
			}
		?>
		</select>
<script>
<?php
	if ($filter == '') {
		echo "document.getElementById('categories').value = 'None';";
	}
	else {
		echo "document.getElementById('categories').value = '$filter';";
	}
?>
			document.getElementById('categories').addEventListener(
				'change',
				function(evt) {
					v = document.getElementById('categories').value;
					document.location = 'show_notes.php?filter='+v;
				}, false);
</script>


		<?php
		foreach ($all_notes as $id => $notes) {
			$note_sections = get_note_categories($notes['id'], $dbConnection);
			if ($filter != '') {
				$is_in_section = false;
				foreach ($note_sections as $cat) {
					if ($cat['id'] == $filter) {
						$is_in_section = true;
					}
				}
				if (! $is_in_section) {
					continue;
				}
			}
			print "<div>";
			print "<label>" . $notes['smaller'] . "</label>";

			print "</div>";
			print "<div class='categories'>";
			print "<ul>";
			foreach ($note_sections as $cat) {
				print "<li>".str_replace("\n", '<br/>', $cat['category']) . "</li>";
			}
			print "</ul>";
			print "</div>";

			print "<div class='note_content'>";
			print str_replace("\n",'<br/>', $notes['content']) . "<br/>";
			print "</div>";

			print "<div class='research'>";
			print str_replace("\n",'<br/>', $notes['research']) . "<br/>";
			print "</div>";

			print "<hr/>";
		}
		?>
	</div>
</body>
</html>
