var PlayerView = Backbone.View.extend({
  el: '#player',
  initialize: function() {
    this.template = HandlebarsTemplates['songs/player'];
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  }

});
