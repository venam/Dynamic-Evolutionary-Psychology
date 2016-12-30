//
//show_notes.js
//

String.prototype.replaceAll = function(search, replacement) {
	var target = this;
	return target.split(search).join(replacement);
};

var ajaxRequest = getAjax();

var Footer = React.createClass({
	render: function() {
		return (
			<div className='footer'>
			<div className='footer_before'></div>
			<div className='footer_content'>
				<a href='index.php'>Main</a> - <a href='https://www.patreon.com/venam'>Patreon page</a> - <a href='mailto:patrick[at]psychology[dot]wtf'>Contact</a> <br/>
				© Patrick Louis & Reine Chbat All Rights Reserved.
			</div>
			</div>
		);
	}
});

var StaticHeader = React.createClass({
	handleChangeCat: function(event) {
		window.scroll(0,0);
		this.props.change_category(event.target.value);
	},

	render: function() {
		return (
			<div className='static_header'>
				<div id="main_title" className='static_title_part'>
					<a href="index.php">Dynamic Evolutionary Psychology</a>
				</div>
				<div className='static_category_part'>
				Criteria:
				<select onChange={this.handleChangeCat} defaultValue='none'>
				<option key='empty' value='none'>All</option>
				{this.props.notes_category.map(function(category) {
					return (
						<option key={category.id} value={category.id}>
							{category.category}
						</option>
					);
				}.bind(this))}
				</select>
				</div>
			</div>
		);
	}
});

var Note = React.createClass({

	getInitialState: function () {
		return {
			paperfold: true,
		};
	},

	findInAllCat: function(cat) {
		for (var i in this.props.all_categories) {
			if (cat == this.props.all_categories[i]['id']) {
				return this.props.all_categories[i]['category'];
			}
		}
	},

	togglePaper: function() {
		this.setState({paperfold: !this.state.paperfold});
	},

	componentDidMount: function() {
		//paperfold it
		var paperfold = $('#hidden_'+this.props.id).paperfold();
		$('#minus_'+this.props.id).click(paperfold.toggle);
		$('#minus_'+this.props.id).click(this.togglePaper);
		paperfold.open();
	},

	render: function() {
		var smaller = this.props.smaller.replaceAll("<->","<span class='separator'></span>");
		var smaller = smaller.replaceAll("->","<span class='separator'></span>");
		var content = this.props.content.replaceAll("\n", "<br/>");
		var research = this.props.research.replaceAll("\n", "<br/>");
		var cat_in_text = []
		for (var i in this.props.category) {
			cat_in_text[i] = this.findInAllCat(this.props.category[i]);
		}
		return (
			<div className="container">
				<div className="note">
					<div className="note_left_block">
						<div className="centered">
							<div id={"minus_"+this.props.id}
								className={"note_minus "+
							(
								(this.state.paperfold)
								? "left_block_minus"
								: "left_block_plus" ) }>
							</div>
						</div>
						<div className="note_head"></div>
						<div className="note_arrow"></div>
						<div className="note_categories">
							{cat_in_text.map(function(catego){
								return (
									<div className="note_category">
										 {catego}
									</div>
								);
							})
							}
						</div>
					</div>
					<div className="note_right_container">
						<div className="note_right_block">
							<div className="note_smaller"
									dangerouslySetInnerHTML={ {__html: smaller} }>
							</div>
							<div id={"hidden_"+this.props.id} className="note_hidden_content">
								<div
									dangerouslySetInnerHTML={ {__html: content} }
									className="note_content">
								</div>

								<div
									dangerouslySetInnerHTML={ {__html: research} }
									className="note_research">
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		);
	}
});

var ShowNotes = React.createClass({

	getInitialState: function () {
		return {
			all_notes: {},
			all_categories: [],
			current_category: 'none',
			finished_loading: false,
			waiting: false
		};
	},

	fetchInitialInfo: function() {
		if (this.state.waiting == false) {
			this.setState({waiting: true});
			// here test instead of POST getting it directly from the page itself
			/*
			ajaxRequest.open("POST", "fetch_initial_info.php", true);
			ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			ajaxRequest.send();
			*/
			var t = this;
			/*
			ajaxRequest.onreadystatechange = function(){
				if(ajaxRequest.readyState == 4){
			*/
					t.setState({waiting: false});
					//var r = ajaxRequest.responseText;
					//console.log("ajax response: "+r);
					//var parsed_json = JSON.parse(r);
			/*
					t.setState({
						all_notes: parsed_json['notes'],
						all_categories: parsed_json['category'],
						finished_loading: true
					});
			*/
					t.setState({
						all_notes: initial_info['notes'],
						all_categories: initial_info['category'],
						finished_loading: true
					});

					/*
				}
			}
			*/
		}
	},

	componentDidMount: function() {
		document.body.addEventListener('keydown', this.handleKeyDown);
		this.fetchInitialInfo();
	},


	componentWillUnmount: function() {
		document.body.removeEventListener('keydown', this.handleKeyDown);
	},

	handleKeyDown: function(e) {
		var ENTER = 13;
		if( e.keyCode == ENTER ) {
		}
	},

	change_category: function(cat) {
		if (cat=='none') {
			this.setState({current_category: cat});
		}
		else {
			this.setState({current_category: parseInt(cat)});
		}
	},

	findInAllCat: function(cat) {
		for (var i in this.state.all_categories) {
			if (cat == this.state.all_categories[i]['id']) {
				return this.state.all_categories[i]['definition'];
			}
		}
	},

	render: function () {
		var notes_part = [];
		//don't forget to show the note definition
		for (var i in this.state.all_notes) {
				var notes = this.state.all_notes[i];
				if (this.state.current_category == 'none'
				|| notes.category.indexOf(this.state.current_category) != -1){
					notes_part.push(
						<Note
						key={i}
						id={i}
						smaller={notes.smaller}
						research={notes.research}
						content={notes.content}
						all_categories={this.state.all_categories}
						category={notes.category} />
					);
				}
		}

		return (
		<div>
			<StaticHeader
				notes_category={this.state.all_categories}
				change_category={this.change_category} />
			<div id="fold_all" onClick={
				function() {
					for (var i in this.state.all_notes) {
						var notes = this.state.all_notes[i];
						if (this.state.current_category == 'none'
							|| notes.category.indexOf(this.state.current_category) != -1){
							$('#minus_'+i).click();
						}
					}
				}.bind(this)
			} >
				Fold All
			</div>
			<div id="back_to_top">
				<a href="#top" >Back To Top</a>
			</div>

			<div id="#top"></div>
			<div className='static_header_separator'></div>
			<div className="container">
				<div className='disclaimer'>
					<em>Disclaimer</em>:
This is the data bank for the research.  Keep in mind that most of those
are only correlations or theories. To link and tag them by categories,
which is the novelty here, lowers the correlation and is prone to the
conjunction fallacy. Nevertheless, this is highly interesting to know
and tinker about.
				</div>
			</div>

			<div className="container definition">
			{this.state.current_category == 'none' ? '' : this.findInAllCat(this.state.current_category)}
			{this.state.finished_loading == true ? '': <div>loading</div>}
			</div>
			{
				notes_part.map(function(note) {
					return note;
				})
			}
			<Footer />
		</div>
		);
	}

});


ReactDOM.render(
	<ShowNotes />,
	document.getElementById('show_notes')
);
