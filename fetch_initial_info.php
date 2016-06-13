<?php

include_once("include/functions.php");
$dbConnection = get_db_handle();

$initial_info = array();
$initial_info['category'] = get_all_categories($dbConnection);
$initial_info['notes'] = get_all_notes_with_categories($dbConnection);
print json_encode($initial_info);
