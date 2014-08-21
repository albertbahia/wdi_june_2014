var FormView = Backbone.View.extend({
  el: '#grumble-form',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/grumbleForm']
    this.render();
  },

  events: {
    'click #add-grumble': 'addGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template());
  },

  addGrumble: function() {
    var grumble = new GrumbleModel({
      title: $('#grumble-form').find("input[name='title']").val(),
      image: $('#grumble-form').find("input[name='image']").val(),
      content: $('#grumble-form').find("input[name='content']").val(),
      avatar: $('#grumble-form').find("input[name='avatar']").val(),
      author: $('#grumble-form').find("input[name='author']").val()
    });
    grumble.save();
    grumbles.fetch({ reset: true });
  }
})
