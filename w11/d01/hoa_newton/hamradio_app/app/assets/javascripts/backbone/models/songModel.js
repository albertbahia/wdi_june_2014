var SongModel = Backbone.Model.extend({
	initialize: function () {
		console.log("new Song Model created !");
	},
	urlRoot: '/songs'
});