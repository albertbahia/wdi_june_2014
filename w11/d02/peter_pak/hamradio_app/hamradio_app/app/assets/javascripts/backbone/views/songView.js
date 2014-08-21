var SongView = Backbone.View.extend({
  className: 'song',
  initialize: function() {
    this.template = HandlebarsTemplates['songs/song']; // has to be done on initialize or else will be empty
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();

  },
  events: {
    'click img': 'updatePlayer',
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  updatePlayer: function() {
    player.model = this.model;
    player.render();
  }

});
