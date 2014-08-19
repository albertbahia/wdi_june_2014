var SongView = Backbone.View.extend({
  className: 'song',

  // template: HandlebarsTemplates['songs/test'],
  initialize: function() {
    this.template = HandlebarsTemplates['songs/song'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  }
});
