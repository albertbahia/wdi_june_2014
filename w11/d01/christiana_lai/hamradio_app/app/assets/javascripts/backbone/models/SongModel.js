var SongModel = Backbone.Model.extend({
  initialize: function() {
    console.log('New Song Model Create');
  },
  urlRoot: '/songs'
});
