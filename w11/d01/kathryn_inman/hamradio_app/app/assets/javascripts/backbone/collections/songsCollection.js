var SongsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('new song collection');
  },
  model: SongModel,
  url: '/songs/'
})
