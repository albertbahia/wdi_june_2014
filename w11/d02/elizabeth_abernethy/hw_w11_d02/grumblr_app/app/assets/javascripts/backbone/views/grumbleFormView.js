var GrumbleFormView = Backbone.View.extend({

  el: '#grumble-form',

  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/newGrumble'];
    this.render();
  },

  events: {
    'click #create': 'addGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template);
  },

  addGrumble: function() {
    grumbles.create({
      author: $('#author').val(),
      title: $('#title').val(),
      content: $('#content').val(),
      image: $('#image').val()
    });
    this.render();
  }
});
