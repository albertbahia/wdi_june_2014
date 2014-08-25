var GrumbleView = Backbone.View.extend({
  className: 'grumble', 

  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/grumble']; 
    this.listenTo(this.model, 'change', this.render); 
    this.render(); 
  }, 

  render: function() {
    this.$el.empty(); 
    this.$el.html(this.template(this.model.toJSON));
  }
}); 