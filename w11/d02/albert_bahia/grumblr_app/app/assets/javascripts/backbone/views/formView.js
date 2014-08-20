var FormView = Backbone.View.extend({
  el: '#form',

  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/form'];
    this.render();
  },

  events: {
    'click button': 'addGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template());
  },

  addGrumble: function() {
    var grumble = {
      title: this.$el.find("#title").val(),
      avatar: this.$el.find("#avatar").val(),
      author: this.$el.find("#author").val(),
      content: this.$el.find("#content").val()
    };
    this.collection.create(grumble);
    console.log(grumble);
    console.log('adding grumble');
  }
});
