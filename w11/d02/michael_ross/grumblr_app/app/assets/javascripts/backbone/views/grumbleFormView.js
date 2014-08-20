var GrumbleFormView = Backbone.View.extend({
  el: '#form',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/form'];
    this.render();
  },

  events: {
    'click #submit' : 'savePost'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template);
  },

  savePost: function() {
    grumbles.create({
      title: $('#title').val(),
      author: $('#author').val(),
      avatar: $('#avatar').val(),
      image: $('#image').val(),
      content: $('#content').val()
    });
    this.render();
  }

});
