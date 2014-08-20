var GrumbleView = Backbone.View.extend({
  className: 'grumble',

  initialize: function() {
    this.template = HandlebarsTemplates['grumblrs/grumblr'];
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  events: {
    'click .delete' : 'deleteGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  deleteGrumble: function() {
    this.model.destroy();
    this.remove();
  }
});
