App.Views.GrumbleForm = Backbone.View.extend({

  el: '#form',

  initialize: function() {
    this.template = HandlebarsTemplates['grumblrs/form'];
    this.listenTo(this.collection, 'add', this.render);
    this.render();
  },

  events: {
    'click .submit' : 'submitGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template());
  },

  submitGrumble: function() {
    var formData = {
      avatar:  $('input[name="avatar"]').val(),
      author:  $('input[name="author"]').val(),
      title:   $('input[name="title"]').val(),
      content: $('input[name="content"]').val()
    };

    App.Collections.grumbles.create(formData);
    $('input').val('');

  }
});
