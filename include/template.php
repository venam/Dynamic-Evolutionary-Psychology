<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta author="Patrick & Reine Louis">
		<title><?=TITLE?> - <?=$page_title?></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="scripts/react/react.min.js"></script>
		<script src="scripts/react/react-dom.min.js"></script>
		<script src="scripts/react/browser.min.js"></script>
		<script src="scripts/xhr.js"></script>
        <link rel="stylesheet" href="style/main.css" />
		<link rel="icon" type="image/png" href="TODO" />
	</head>
	<body>
		<div id="page">
			<?php include "templates/$tpl.tpl.php" ?>
		</div>
	</body>
</html>
