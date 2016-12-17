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
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-89119607-1', 'auto');
ga('send', 'pageview');

</script>
