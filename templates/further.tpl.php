<?php

$links = array(
	array(
		'name' => 'The Handbook of Evolutionary Psychology',
		'ref' => 'https://www.amazon.com/Handbook-Evolutionary-Psychology-Foundation/dp/111875588X'
	),
	array(
		'name' => 'David Buss Publications',
		'ref' => 'http://labs.la.utexas.edu/buss/publications/'
	),
	array(
		'name' => 'Evolutionary Psychology Journal',
		'ref' => 'http://epjournal.net/blog/'
	),
	array(
		'name' => 'The Selfish Gene',
		'ref' => 'https://en.wikipedia.org/wiki/The_Selfish_Gene'
	),
	array(
		'name' => 'On The Origins Of Species By Means Of Natural Selection',
		'ref' => 'https://en.wikipedia.org/wiki/On_the_Origin_of_Species'
	),
	array(
		'name' => 'The Blank Slate',
		'ref' => 'https://en.wikipedia.org/wiki/The_Blank_Slate'
	),
	array(
		'name' => 'The Compleat Strategyst',
		'ref' => 'http://www.rand.org/pubs/commercial_books/CB113-1.html'
	),
	array(
		'name' => 'List Of Evolutionary Psychology Publications',
		'ref' => 'http://evp.sagepub.com/'
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
			Further reading material
		</div>

		<div class="container">
			<div class='disclaimer'>
				<em>Disclaimer</em>: If what you see on this website interests
you will also love all the following resources.
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


		<div class='footer'>
			<div class='footer_before'></div>
			<div class='footer_content'>
				<a href='index.php'>Main</a> - <a href='mailto:patrick at iotek dot org'>Contact</a> <br/>
				&copy; Patrick Louis &amp; Reine Chbat
			</div>
		</div>


	</div>
</div>

