<?php

$links = array(
	array(
		'name' => 'A Lifetime Of Stress',
		'ref' => 'stress.php'
	),
	array(
		'name' => 'The Mapping Of What Creates Your Personality',
		'ref' => 'personality.php'
	),
	array(
		'name' => 'The Mapping Of What Triggers Aggression',
		'ref' => 'aggresssion.php'
	),
	array(
		'name' => 'The Mapping Of The Influences On Mate Choice',
		'ref' => 'mate.php'
	),
	array(
		'name' => 'The Mapping Of Illusions Blinding Our Judgements',
		'ref' => 'illusion.php'
	),
);
?>
<div id="intro">
	<div>
		<div class='static_header'>
			<div id="main_title" class='static_title_part'>
				<a href="index.php">Dynamic Evolutionary Psychology</a>
			</div>
			<div class='static_category_part'>
			<?=$page_title?>
			</div>
		</div>
		<div id="back_to_top">
			<a href="#top" >Back To Top</a>
		</div>
		<div id="#top"></div>
		<div class='static_header_separator'></div>
		<div class="container introduction_title">
			Dynamic Evolutionary Cycles
		</div>

		<div class="container">
			<div class='disclaimer'>
				<em>Disclaimer</em>: This page lists concepts that are linked
together by correlations surrounding a certain subject. We consider those
dynamic cycles, as they are rentrant, and many variables (most unknown) affect
them.
			</div>

			<div class='further_list'>
				<ul>
					<?php
					foreach($links as $l) {
						print "<li>";
						print "<a href='";
						print $l['ref'];
						print "'>";
						print $l['name'];
						print "</li>";
					}
					?>
				</ul>

			</div>
		</div>

		<?php include("templates/footer.tpl.php"); ?>

	</div>
</div>

