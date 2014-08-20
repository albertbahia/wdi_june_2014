App.Views.SongForm = Backbone.View.extend({
  el: '#new-song-modal',

  events: {
    'click button.submit': 'addSong'
  },

  addSong: function() {
    // grab form data
    var formData = {
      artist:      $('#new-song-artist').val(),
      title:       $('#new-song-title').val(),
      genre:       $('#new-song-genre').val(),
      audio_url:   $('#new-song-audio-url').val(),
      album_art:   $('#new-song-album-art').val()
    };

    // multi-step way, use collection.create instead
    // var newSong = new Song(formData);
    // newSong.save();
    // songs.add(newSong);
    App.Collections.songs.create(formData);
    $('input').val('');
    this.$el.hide();

    // change the URL
    App.Routers.songs.navigate('');

  }
});
