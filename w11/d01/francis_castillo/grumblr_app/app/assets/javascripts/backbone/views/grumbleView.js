var GrumbleView = Backbone.View.extend({
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/grumble'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();

  },
  events: {
    'click .delete': 'deleteDiv'
    
  },
  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));

    console.log('show this bitach');
  },
  deleteDiv: function() {
    this.remove();
    this.model.destroy();
  }
});
