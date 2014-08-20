var PlayerView = Backbone.View.extend({
  className: 'player',
  el: '#player',
  initialize: function() {
    this.template = HandlebarsTemplates['songs/player']; // has to be done on initialize or else will be empty
  },
  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  }

});
