var SongModel = Backbone.Model.extend({
  initialize: function() {
    console.log('new song model');
  },
  urlRoot: '/songs'
});
