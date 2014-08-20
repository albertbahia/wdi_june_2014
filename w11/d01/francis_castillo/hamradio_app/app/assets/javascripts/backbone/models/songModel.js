var SongModel = Backbone.Model.extend({
  initialize: function() {
    console.log("New Song Model created");
  },
  urlRoot: '/songs'
});
