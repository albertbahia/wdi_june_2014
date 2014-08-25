App.Routers.Songs = Backbone.Router.extend({
  routes: {
    '':            'index',
    'songs/new':   'new',
    'songs/:id/play': 'playSong'
  },

  index: function() {
    var songs = App.Collections.songs;
    if (songs.length === 0) {
      songs.fetch({ reset: true });
    }

    $('#new-song-modal').fadeOut();
  },

  new: function() {
    var songs = App.Collections.songs;
    if (songs.length === 0) {
      songs.fetch({ reset: true });
    }

    $('#new-song-modal').fadeIn();
  },

  playSong: function(id) {
    var songs = App.Collection.songs;
    songs.fetch({
      reset: true,
      success: function() {
        App.Views.player.setSong(songs.get(id));
      }
    });


  }
});
