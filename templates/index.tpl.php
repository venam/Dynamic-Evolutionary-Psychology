<div id="index">
	<div>
		<div class="container">

			<div class='title_index'>
				Dynamic Evolutionary Psychology
			</div>

			<div class='disclaimer'>
				Simplistic and abbreviated researches on evolutionary psychology
				correlations.
			</div>


			<div class='index_links'>
				<div>
				<a href='intro.php'>Introduction (why)</a>
				</div>
				<div>
				<a href='cycles.php'>Cycles</a>
				</div>
				<div>
				<a href='data.php'>Browse Data Bank</a>
				</div>
				<div>
				<a href='further.php'>Further Reading</a>
				</div>
			</div>


			<div id='opening_box'>
				<object
					id='index_svg'
					type="image/svg+xml"
					data="svgs/index_page_box.svg">
				</object>
				<div id='opening_box_text'>
					- Opening The Box
				</div>
			</div>


		</div>
		<?php include("templates/footer.tpl.php"); ?>

	</div>
</div>

<script src="scripts/vivus.min.js"></script>
<script>
new Vivus(
	'index_svg',
	{
		type: 'oneByOne',
			duration: 100,
			animTimingFunction: Vivus.EASE
	}
);
</script>

