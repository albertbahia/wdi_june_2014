App.Views.Player = Backbone.View.extend({
  el: '#player',

  initialize: function() {
    this.template = HandlebarsTemplates['songs/player'];
  },

  setSong: function(song) {
    this.model = song;
    this.render();

    App.Routers.router.navigate('songs/' + song.id + '/play');
  },

  render: function() {
    this.$el.html(this.template(this.model.toJSON()));
  }
});
