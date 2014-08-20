var SongsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Songs Collections');
  },
  model: SongModel,
  url: '/songs'
})
