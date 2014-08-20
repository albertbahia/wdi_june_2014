var GrumbleView = Backbone.View.extend({
  className: 'grumble',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/grumble'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();

  },
  events: {
    'click button': 'deleteGrumble'
  },
  render: function() {
    this.$el.empty();
    this.$el.append(this.template(this.model.toJSON()));
  },
  deleteGrumble: function() {
    this.model.destroy();
  }
})
