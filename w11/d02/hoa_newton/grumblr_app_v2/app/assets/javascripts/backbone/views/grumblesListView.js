var GrumbleListView = Backbone.View.extend({
	el: '#grumbles',

	initialize: function () {
		this.listenTo(this.collection, 'reset', this.render);
		this.listenTo(this.collection, 'add', this.addNew);
		this.render();
	},

	render: function () {
		this.$el.empty();
		this.collection.each (function (grumble) {
			var grumbleView = new GrumbleView({
				model: grumble
			});
			this.$el.prepend(grumbleView.$el);
		}, this);
	},

	addNew: function (lastGrumble) {
		lastGrumble.save();

		var grumbleView = new GrumbleView({
				model: lastGrumble
			});
		this.$el.prepend(grumbleView.$el);
	}
	
})