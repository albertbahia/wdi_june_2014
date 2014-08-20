App.Routers.Songs = Backbone.Router.extend({

  routes: {
    '': 'index',
    'songs/new': 'new',
    'songs/:id/play': 'play'
  },

  index: function() {
    App.Collections.songs.fetch({reset: true});
    $('#new-song-modal').fadeOut();
  },

  new: function() {
    var songs = App.Collections.songs;
    if (songs.models.length === 0) {
      songs.fetch({reset: true});
    }
    $('#new-song-modal').fadeIn();
  },

  play: function(songID) {
    var songs = App.Collections.songs;
    songs.fetch({reset: true,
      success: function() {
        App.Views.player.setSong(songs.get(songID));
      }
    });
  }

});
