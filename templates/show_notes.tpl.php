<div id="show_notes"></div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="./scripts/paperfold.js"></script>
<?php
$initial_info = array();
$initial_info['category'] = get_all_categories($dbConnection);
$initial_info['notes'] = get_all_notes_with_categories($dbConnection);
print '<script>';
print "var initial_info = ".json_encode($initial_info,JSON_PRETTY_PRINT).";";
print '</script>';
?>
<script type="text/javascript" src="./compiled_scripts/show_notes.js"></script>
