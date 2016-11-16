'use strict';

//
//show_notes.js
//

String.prototype.replaceAll = function (search, replacement) {
	var target = this;
	return target.split(search).join(replacement);
};

var ajaxRequest = getAjax();

var Footer = React.createClass({
	displayName: 'Footer',

	render: function render() {
		return React.createElement(
			'div',
			{ className: 'footer' },
			React.createElement('div', { className: 'footer_before' }),
			React.createElement(
				'div',
				{ className: 'footer_content' },
				React.createElement(
					'a',
					{ href: 'index.php' },
					'Main'
				),
				' - ',
				React.createElement(
					'a',
					{ href: 'mailto:patrick at iotek dot org' },
					'Contact'
				),
				' ',
				React.createElement('br', null),
				'© Patrick Louis & Reine Chbat All Rights Reserved.'
			)
		);
	}
});

var StaticHeader = React.createClass({
	displayName: 'StaticHeader',

	handleChangeCat: function handleChangeCat(event) {
		window.scroll(0, 0);
		this.props.change_category(event.target.value);
	},

	render: function render() {
		return React.createElement(
			'div',
			{ className: 'static_header' },
			React.createElement(
				'div',
				{ id: 'main_title', className: 'static_title_part' },
				React.createElement(
					'a',
					{ href: 'index.php' },
					'Dynamic Evolutionary Psychology'
				)
			),
			React.createElement(
				'div',
				{ className: 'static_category_part' },
				'Criteria:',
				React.createElement(
					'select',
					{ onChange: this.handleChangeCat, defaultValue: 'none' },
					React.createElement(
						'option',
						{ key: 'empty', value: 'none' },
						'All'
					),
					this.props.notes_category.map(function (category) {
						return React.createElement(
							'option',
							{ key: category.id, value: category.id },
							category.category
						);
					}.bind(this))
				)
			)
		);
	}
});

var Note = React.createClass({
	displayName: 'Note',


	getInitialState: function getInitialState() {
		return {
			paperfold: true
		};
	},

	findInAllCat: function findInAllCat(cat) {
		for (var i in this.props.all_categories) {
			if (cat == this.props.all_categories[i]['id']) {
				return this.props.all_categories[i]['category'];
			}
		}
	},

	togglePaper: function togglePaper() {
		this.setState({ paperfold: !this.state.paperfold });
	},

	componentDidMount: function componentDidMount() {
		//paperfold it
		var paperfold = $('#hidden_' + this.props.id).paperfold();
		$('#minus_' + this.props.id).click(paperfold.toggle);
		$('#minus_' + this.props.id).click(this.togglePaper);
		paperfold.open();
	},

	render: function render() {
		var smaller = this.props.smaller.replaceAll("<->", "<span class='separator'></span>");
		var smaller = smaller.replaceAll("->", "<span class='separator'></span>");
		var content = this.props.content.replaceAll("\n", "<br/>");
		var research = this.props.research.replaceAll("\n", "<br/>");
		var cat_in_text = [];
		for (var i in this.props.category) {
			cat_in_text[i] = this.findInAllCat(this.props.category[i]);
		}
		return React.createElement(
			'div',
			{ className: 'container' },
			React.createElement(
				'div',
				{ className: 'note' },
				React.createElement(
					'div',
					{ className: 'note_left_block' },
					React.createElement(
						'div',
						{ className: 'centered' },
						React.createElement('div', { id: "minus_" + this.props.id,
							className: "note_minus " + (this.state.paperfold ? "left_block_minus" : "left_block_plus") })
					),
					React.createElement('div', { className: 'note_head' }),
					React.createElement('div', { className: 'note_arrow' }),
					React.createElement(
						'div',
						{ className: 'note_categories' },
						cat_in_text.map(function (catego) {
							return React.createElement(
								'div',
								{ className: 'note_category' },
								catego
							);
						})
					)
				),
				React.createElement(
					'div',
					{ className: 'note_right_container' },
					React.createElement(
						'div',
						{ className: 'note_right_block' },
						React.createElement('div', { className: 'note_smaller',
							dangerouslySetInnerHTML: { __html: smaller } }),
						React.createElement(
							'div',
							{ id: "hidden_" + this.props.id, className: 'note_hidden_content' },
							React.createElement('div', {
								dangerouslySetInnerHTML: { __html: content },
								className: 'note_content' }),
							React.createElement('div', {
								dangerouslySetInnerHTML: { __html: research },
								className: 'note_research' })
						)
					)
				)
			)
		);
	}
});

var ShowNotes = React.createClass({
	displayName: 'ShowNotes',


	getInitialState: function getInitialState() {
		return {
			all_notes: {},
			all_categories: [],
			current_category: 'none',
			finished_loading: false,
			waiting: false
		};
	},

	fetchInitialInfo: function fetchInitialInfo() {
		if (this.state.waiting == false) {
			this.setState({ waiting: true });
			ajaxRequest.open("POST", "fetch_initial_info.php", true);
			ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			ajaxRequest.send();
			var t = this;
			ajaxRequest.onreadystatechange = function () {
				if (ajaxRequest.readyState == 4) {
					t.setState({ waiting: false });
					var r = ajaxRequest.responseText;
					//console.log("ajax response: "+r);
					var parsed_json = JSON.parse(r);
					t.setState({
						all_notes: parsed_json['notes'],
						all_categories: parsed_json['category'],
						finished_loading: true
					});
				}
			};
		}
	},

	componentDidMount: function componentDidMount() {
		document.body.addEventListener('keydown', this.handleKeyDown);
		this.fetchInitialInfo();
	},

	componentWillUnmount: function componentWillUnmount() {
		document.body.removeEventListener('keydown', this.handleKeyDown);
	},

	handleKeyDown: function handleKeyDown(e) {
		var ENTER = 13;
		if (e.keyCode == ENTER) {}
	},

	change_category: function change_category(cat) {
		if (cat == 'none') {
			this.setState({ current_category: cat });
		} else {
			this.setState({ current_category: parseInt(cat) });
		}
	},

	findInAllCat: function findInAllCat(cat) {
		for (var i in this.state.all_categories) {
			if (cat == this.state.all_categories[i]['id']) {
				return this.state.all_categories[i]['definition'];
			}
		}
	},

	render: function render() {
		var notes_part = [];
		//don't forget to show the note definition
		for (var i in this.state.all_notes) {
			var notes = this.state.all_notes[i];
			if (this.state.current_category == 'none' || notes.category.indexOf(this.state.current_category) != -1) {
				notes_part.push(React.createElement(Note, {
					key: i,
					id: i,
					smaller: notes.smaller,
					research: notes.research,
					content: notes.content,
					all_categories: this.state.all_categories,
					category: notes.category }));
			}
		}

		return React.createElement(
			'div',
			null,
			React.createElement(StaticHeader, {
				notes_category: this.state.all_categories,
				change_category: this.change_category }),
			React.createElement(
				'div',
				{ id: 'back_to_top' },
				React.createElement(
					'a',
					{ href: '#top' },
					'Back To Top'
				)
			),
			React.createElement('div', { id: '#top' }),
			React.createElement('div', { className: 'static_header_separator' }),
			React.createElement(
				'div',
				{ className: 'container' },
				React.createElement(
					'div',
					{ className: 'disclaimer' },
					React.createElement(
						'em',
						null,
						'Disclaimer'
					),
					': This is the data bank for the research.  Keep in mind that most of those are only correlations or theories. To link and tag them by categories, which is the novelty here, lowers the correlation and is prone to the conjunction fallacy. Nevertheless, this is highly interesting to know and tinker about.'
				)
			),
			React.createElement(
				'div',
				{ className: 'container definition' },
				this.state.current_category == 'none' ? '' : this.findInAllCat(this.state.current_category),
				this.state.finished_loading == true ? '' : React.createElement(
					'div',
					null,
					'loading'
				)
			),
			notes_part.map(function (note) {
				return note;
			}),
			React.createElement(Footer, null)
		);
	}

});

ReactDOM.render(React.createElement(ShowNotes, null), document.getElementById('show_notes'));