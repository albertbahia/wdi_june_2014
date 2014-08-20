var GrumbleView = Backbone.View.extend({
  className: 'grumble',
  initialize: function() {
    console.log('new grumble view')
    this.template = HandlebarsTemplates['grumbles/grumble'];
    this.render();
  },
  events: {
    'click .delete-button': 'deleteGrumble'
  },
  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },
  deleteGrumble: function() {
    this.model.destroy({wait: true, success: function() {
      console.log('deleted');
    }});
    this.remove();
  }
})
