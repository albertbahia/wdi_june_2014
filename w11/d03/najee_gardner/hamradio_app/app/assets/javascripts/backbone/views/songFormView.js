App.Views.SongForm = Backbone.View.extend({
  el: '#new-song-modal',

  events: {
    'click button.submit': 'addSong'
  },

  addSong: function() {
    var newSong = {
      title: $('#new-song-title').val(),
      artist: $('#new-song-artist').val(),
      genre: $('#new-song-genre').val(),
      audio_url: $('#new-song-audio-url').val(),
      album_art: $('#new-song-album-art').val()
    };

    App.Collections.songs.create(newSong);

    $('input').val('');
    $('#new-song-modal').fadeOut();

    App.Routers.router.navigate('');

  }
});
