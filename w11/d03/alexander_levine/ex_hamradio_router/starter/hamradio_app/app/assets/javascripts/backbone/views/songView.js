App.Views.Song = Backbone.View.extend({
  className: 'song',
  tagName: 'div',

  initialize: function() {
    this.template = HandlebarsTemplates['songs/song'];
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  events: {
    'click': 'updatePlayer'
  },

  render: function() {
    this.$el.html(this.template(this.model.toJSON()));
  },

  updatePlayer: function() {
    var song = this.model;
    App.Views.player.setSong(song);
    App.Routers.songs.navigate('songs/' + this.model.id + '/play');
  }
});
