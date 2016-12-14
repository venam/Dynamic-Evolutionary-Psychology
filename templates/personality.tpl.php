<div id="personality">
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
			The Mapping Of Many Correlations Affecting Personality
		</div>

		<div class="container">
			<div class='disclaimer'>
				<em>Disclaimer</em>: This is a mind map of correlated subjects that revolve around personality building. ( <a href="svgs/personality.svg">Zoom in</a> )
			</div>
<div class="keep_spaces">

Personality develops itself from birth.<br/>
Around half influenced by the genetic mix of the parents and half
influenced by the social norms and environment.<br/>
<br/>

<em>Around half the variations in personality, intelligence, and behavior comes from something in the environment.
<br/>
<br/>
But whatever that something is, it cannot be shared by two children growing up in the same home with the same parents</em>

<em>
<br/>
<br/>
The big five personality traits, OCEAN are heritable at around 50%.
<ul>
<li>Openness to experience</li>
<li>Conscientiousness</li>
<li>Extraversion</li>
<li>Agreeableness</li>
<li>Neuroticism</li>
</ul>
</em>
<br/>

The older we get, the more stable the personality becomes.

<br/>
<br/>
As a snowball effect, we start with a set of big traits and express them through the choices and oportunities that open themselves in front of us during life, plus a bit of luck twist.

<br/>
<br/>
It is also shaped by the norms around us, we all want to climb the social hierarchy, whatever it currently is.

<br/>
<br/>

</div>
			
		</div>
		<script src="svgs/svg-pan-zoom.min.js"></script>
		<script src="svgs/hammer.js"></script>
		<div id="mobile-div" style="width: 99.9%; height: 400px; margin-bottom: 2em; border:1px solid black; ">
			<object id='mobile-svg' data="svgs/personality.svg" type="image/svg+xml" style="display: inline; width: inherit; min-width: inherit; max-width: inherit; height: inherit; min-height: inherit; max-height: inherit;">
			no support for svg
		</object>
		</div>
<script>
// Don't use window.onLoad like this in production, because it can only listen to one function.
window.onload = function() {
	var eventsHandler;

	eventsHandler = {
	haltEventListeners: ['touchstart', 'touchend', 'touchmove', 'touchleave', 'touchcancel']
		, init: function(options) {
			var instance = options.instance
				, initialScale = 1
				, pannedX = 0
				, pannedY = 0

				// Init Hammer
				// Listen only for pointer and touch events
				this.hammer = Hammer(options.svgElement, {
				inputClass: Hammer.SUPPORT_POINTER_EVENTS ? Hammer.PointerEventInput : Hammer.TouchInput
		})

		// Enable pinch
		this.hammer.get('pinch').set({enable: true})

		// Handle double tap
		this.hammer.on('doubletap', function(ev){
			instance.zoomIn()
		})

		// Handle pan
		this.hammer.on('panstart panmove', function(ev){
			// On pan start reset panned variables
			if (ev.type === 'panstart') {
				pannedX = 0
					pannedY = 0
			}

			// Pan only the difference
			instance.panBy({x: ev.deltaX - pannedX, y: ev.deltaY - pannedY})
				pannedX = ev.deltaX
				pannedY = ev.deltaY
		})

		// Handle pinch
		this.hammer.on('pinchstart pinchmove', function(ev){
			// On pinch start remember initial zoom
			if (ev.type === 'pinchstart') {
				initialScale = instance.getZoom()
					instance.zoom(initialScale * ev.scale)
			}

			instance.zoom(initialScale * ev.scale)

		})

		// Prevent moving the page on some devices when panning over SVG
		options.svgElement.addEventListener('touchmove', function(e){ e.preventDefault(); });
		}

	, destroy: function(){
		this.hammer.destroy()
	}
	}

	// Expose to window namespace for testing purposes
	window.panZoom = svgPanZoom('#mobile-svg', {
	zoomEnabled: true
		, controlIconsEnabled: false
		, fit: 0
		, center: 1
		, customEventsHandler: eventsHandler
	});
};
</script>


		<?php include("templates/footer.tpl.php"); ?>
	</div>
</div>

