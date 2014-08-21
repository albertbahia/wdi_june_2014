App.Views.Grumble = Backbone.View.extend({
  className: 'grumble',
  initialize: function() {
    console.log('New Grumble View');
    this.listenTo(this.model, 'change', this.render)
    this.listenTo(this.model, 'destroy', this.remove)
    this.render();
  },
  template: HandlebarsTemplates['grumbles/single'],
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
  },
  events: {
    'click button.delete': 'destroyView',
    'click button.edit': 'editView'
  },
  destroyView: function(){
    this.model.destroy()
  },

  editView: function() {

  }
});
