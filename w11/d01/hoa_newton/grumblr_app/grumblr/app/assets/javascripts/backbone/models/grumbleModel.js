var GrumbleModel = Backbone.Model.extend({
	initialize: function () {
		console.log('new Grumble Model created! ');
	},
	urlRoot: '/grumbles'
});
