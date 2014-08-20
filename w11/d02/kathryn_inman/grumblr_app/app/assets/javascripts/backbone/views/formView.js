var FormView = Backbone.View.extend({
  el: '#grumble-form',
  initialize: function() {
    console.log('new form view');
    this.template = HandlebarsTemplates['/grumbles/form'];
    this.render();
  },
  events: {
  },
  render: function() {
    this.$el.html(this.template());
  },
  showForm: function() {
    this.$el.toggle();
  },
  makeGrumble: function() {
    console.log('makeGrumble fxn')
  }
});
