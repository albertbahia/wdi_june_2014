App.Views.SongForm = Backbone.View.extend({
  el: '#new-song-modal',
  events: {
    'click button' : 'createNewSong'
  },

  createNewSong: function() {
      App.Collections.songs.create({
        artist: $('#new-song-artist').val(),
        title: $('#new-song-title').val(),
        genre: $('#new-song-genre').val(),
        audio_url: $('#new-song-audio-url').val(),
        album_art: $('#new-song-album-art').val()
    });

    $('input').val("");
    this.$el.hide();
    App.Routers.songs.navigate('');
  }
});
