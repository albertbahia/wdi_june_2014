var GrumbleView = Backbone.View.extend({
  className: 'grumble',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/grumble'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events: {
    'click button': 'removeGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  removeGrumble: function() {
    this.model.destroy();
  }
});
