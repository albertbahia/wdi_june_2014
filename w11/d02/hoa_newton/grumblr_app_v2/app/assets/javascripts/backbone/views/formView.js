var FormView = Backbone.View.extend({
	el: '#form',

	initialize: function () {
		this.template = HandlebarsTemplates['grumbles/form'];
		this.render();
	},

	events: {
		'click #create': 'createGrumble'
	},

	render: function () {
		this.$el.empty();
		this.$el.html(this.template());
	},

	createGrumble: function () {
		grumblesCollection.create({
			author: this.$el.find('#author').val(),
			title: this.$el.find('#title').val(),
			content: this.$el.find('#content').val(),
			image: this.$el.find('#image').val(),
			avatar: this.$el.find('#avatar').val(),
		});
		this.render();
	}
})