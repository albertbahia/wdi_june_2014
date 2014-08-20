var FormView = Backbone.View.extend({
  el: '#new-grumble',

  initialize: function(){
    this.template = HandlebarsTemplates['grumbles/newGrumble']
    this.render();
  },

  events: {
    'click button': "addGrumble"
  },

  render: function(){
    this.$el.empty();
    this.$el.html(this.template());
  },

  addGrumble: function(){
    var newGrumble= {
      title: this.$el.find('#title').val(),
      author: this.$el.find('#author').val(),
      content: this.$el.find('#content').val(),
      image: this.$el.find('#image').val(),
      avatar: this.$el.find('#avatar').val()
    };
    this.collection.add(newGrumble);

    this.render();
  }
});
