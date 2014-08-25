App.Views.Grumble = Backbone.View.extend({
  className: 'grumble',
  initialize: function() {
    console.log('New Grumble View');
    this.listenTo(this.model, 'change', this.render)
    this.listenTo(this.model, 'destroy', this.remove)
    this.render();
  },
  template: HandlebarsTemplates['grumbles/single'],
  editTemplate: HandlebarsTemplates['grumbles/edit'],
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
  },
  events: {
    'click .destroy': 'destroyView',
    'click .edit': 'editGrumble'
  },
  destroyView: function(){
    this.model.destroy()
  },

  editGrumble: function() {
    console.log(this.editTemplate(this.model.toJSON()));
    App.Routers.grumbles.navigate('grumbles/'+ this.model.id +'/edit');
    this.$el.append(this.editTemplate(this.model.toJSON()));
  }
});
