var FormView = Backbone.View.extend({
  el: '#add-grumble',

  initialize: function(){
    console.log('hello');
    this.template = HandlebarsTemplates.form;
    this.render();
  },

  render: function(){
    this.$el.empty();
    this.$el.html(this.template);
  },

  events: {
    'click submit': 'addGrumble'
  },

  addGrumble: function(){
    console.log(this);
  }

});
