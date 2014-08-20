var SongView = Backbone.View.extend({

	className: 'song', // giving each song model a class of 'song'

	initialize: function() { 
		this.template = HandlebarsTemplates['songs/song'];
		this.listenTo(this.model, 'change', this.render);
		this.listenTo(this.model, 'destroy', this.remove);
		this.render();
	},

	events: {
		'click img': 'updatePlayer'  //whenever a song is clicked, run the updatePlayer function
	},
// listen to the model/ object if there are changes in the model/ object then rerender the page
	render: function() {
		this.$el.empty(); // empty this test div out then fill the test div with all the info of the model 
		this.$el.html(this.template(this.model.toJSON()));
	},

	updatePlayer: function () {
		player.model = this.model;
		player.render();
	}
});

// el: is for my piece of the big DOM tree
// template : is for the way that you'll see me
// render : is how you would tell me to fill my own el
// toJSON : is to objectify a model for Handlebar eyes