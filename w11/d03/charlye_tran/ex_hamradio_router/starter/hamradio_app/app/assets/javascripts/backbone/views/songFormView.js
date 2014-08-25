App.Views.SongForm = Backbone.View.extend({
  el: '#new-song-modal',

  events: {
    'click button.submit': "addSong"
    },

  addSong: function(){
    console.log("trying to add a song");
    var formData = {
      artist:     $('#new-song-artist').val(),
      title:      $('#new-song-title').val(),
      genre:      $('#new-song-genre').val(),
      audio_url:  $('#new-song-audio-url').val(),
      album_art:  $('#new-song-album-art').val(),
    };

    //this.collection.create === songs.create
    App.Collections.songs.create(formData);
    $('input').val('');
    //or you can $('#new-song-modal').hide();
    this.$el.hide();

    //changes the url (trigger will make the functions run if the url is manually
    //typed in; bad from bc this allows someone to manipulate your state/flow)
    App.Routers.song.navigate('');
  }

});
