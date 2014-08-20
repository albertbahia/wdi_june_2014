var SongView = Backbone.View.extend({
  className: 'song',

  initialize: function() {
    this.template = HandlebarsTemplates['songs/song'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events: {
    'click img': 'updatePlayer'
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
