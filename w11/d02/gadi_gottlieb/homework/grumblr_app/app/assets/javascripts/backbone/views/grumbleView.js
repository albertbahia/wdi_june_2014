var GrumbleView = Backbone.View.extend({
  // el: '#grumble',

  initialize: function(){
    this.template = HandlebarsTemplates['grumbles/grumble'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events: {
    'click button': 'deleteGrumble'
  },

  render: function(){
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  deleteGrumble: function(){
    console.log("Deleted Yo!")
    this.model.destroy();
    this.render();
  }

})
