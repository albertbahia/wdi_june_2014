App.Views.EditForm = Backbone.View.extend({
  id: 'editForm',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/edit'];
    this.render();
  },
  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  }
});
