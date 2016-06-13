<?php

include_once("include/functions.php");
$dbConnection = get_db_handle();

$status = "";

if (isset(
	$_POST["note_content"],
	$_POST["short_review"],
	$_POST["categories"],
	$_POST["research"])) {

	if (add_note($_POST['note_content'], $_POST['short_review'], $_POST['research'], $dbConnection)){

		$note_id = get_id_from_content($_POST['note_content'], $dbConnection);
		foreach ($_POST["categories"] as $a) {
			add_section($note_id, $a, $dbConnection);
		}
		$status = "Note saved";
	}
}
?>

<!doctype html>
<html>
<head>
<meta charset='utf-8' />
<title>Dynamic Evolutionary Psychology - Notes Insert Page</title>
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

.title {
	text-align: center;
	text-decoration: underline;
	margin-bottom: 40px;
}

textarea {
	background-color: #FFF;
	text-align: left;
	color: #212121;
	border: none;
	border: 1px solid #212121;
	padding: 10px;
	box-shadow: 1px 1px 2px #212121;
}

label {
	display: block;
	margin-top: 20px;
}

input, textarea, select {
	width: 100%;
	font-size: 20px;
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

</style>
</head>
<body>
	<div class="content">
		<h1 class="title">Dyn.EP Insertion Page</h1>
		<div class="status"><?php echo $status ?></div>
		<div class="insertion_form">
			<form id='time_selection' action='#' method='post'>
				<label for="note_content">Note:</label>
				<textarea cols='80' rows='10' name="note_content">
				</textarea><br/>
				<label for="short_review">Short review:</label>
				<textarea cols='80' rows='2' name="short_review">
				</textarea>

				<label>Categories</label>
				<select name="categories[]" multiple>
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
				<label for="research">Research Link:</label>
				<textarea cols='80' rows='2' name="research">
				</textarea>
				<input type="submit" value="submit" name="submit" />
			</form>
		</div>
	</div>
</body>
</html>
