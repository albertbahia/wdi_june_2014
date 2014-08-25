var FormView = Backbone.View.extend({
  el: '#grumble-form',
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
    var grumble = new GrumbleModel({
      author: $('#grumble-form').find("input[name='author']").val(),
      title: $('#grumble-form').find("input[name='title']").val(),
      avatar: $('#grumble-form').find("input[name='avatar']").val(),
      content: $('#grumble-form').find("input[name='content']").val(),
    });
    grumble.save();
    grumbles.fetch({ reset: true });
  }
})
