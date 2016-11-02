<div id="stress">
	<div>
		<div class='static_header'>
			<div id="main_title" class='static_title_part'>
				<a href="index.php">Dynamic Evolutionary Psychology</a>
			</div>
			<div class='static_category_part'>
			Cycle - A lifetime of Stress
			</div>
		</div>
		<div id="back_to_top">
			<a href="#top" >Back To Top</a>
		</div>
		<div id="#top"></div>
		<div class='static_header_separator'></div>
		<div class="container introduction_title">
			A lifetime of stress, its evolutionary bases &amp; correlated effects
		</div>

		<div class="container">
			<div class='disclaimer'>
				<em>Disclaimer</em>: This is a dynamic temporal cyclic view of
the correlations around stress.
			</div>
		</div>

		<div class="container">

<?php
$stress_notes = get_all_notes($dbConnection, " where id in ((select note_id from notes_categories where category_id=(select id from categories where category='stress'))) ");


$stress_cycle = array(
	array(
		'name' => 'Generic',
		'cat' => array(77, 95, 98, 99),
	),
	array(
		'name' => 'Conception',
		'cat' => array(7, 158),
	),
	array(
		'name' => 'Childhood',
		'cat' => array(50, 80, 100, 101, 102, 159, 164),
	),
	array(
		'name' => 'Adolescent',
		'cat' => array(117, 118, 127, 133),
	),
	array(
		'name' => 'Adulthood',
		'cat' => array(26, 61, 50, 80, 90, 102)
	)
);

function get_note_with_id($id) {
	global $stress_notes;
	foreach($stress_notes as $s) {
		if ($s['id'] == $id) {
			return $s;
		}
	}
}
?>

<script>

function show_cycle_note(n) {
	var it = document.getElementById('cycle_id_'+n);
	it.style.display = (it.style.display =='block'? 'none': 'block');
}

</script>


<?php
for ($i =0; $i< count($stress_cycle); $i++) {
	print '<h3>'.$stress_cycle[$i]['name'].'</h3>';
	foreach ($stress_cycle[$i]['cat'] as $j) {
		print "<div class='note_smaller cycle_note'
			onclick=show_cycle_note('${i}_${j}')>";
		print get_note_with_id($j)['smaller'];
		print "</div>";
		print "<div id='cycle_id_${i}_${j}' style='display:none'>";
		print '<div class="note_content cycle_content">';
		print str_replace( "\n" , '<br/>', get_note_with_id($j)['content']);
		print "</div>";
		print '<div class="note_research cycle_research">';
		print str_replace( "\n" , '<br/>', get_note_with_id($j)['research']);
		print "</div>";
		print "</div>";
	}
}
?>
		</div>

		<div class='footer'>
			<div class='footer_before'></div>
			<div class='footer_content'>
				<a href='index.php'>Main</a> - <a href='mailto:patrick at iotek dot org'>Contact</a> <br/>
				&copy; Patrick Louis &amp; Reine Chbat
			</div>
		</div>
	</div>
</div>

