App.Views.GrumbleForm = Backbone.View.extend({
  el: '#grumble-form',

  initialize: function(){
    this.template = HandlebarsTemplates["grumbles/newGrumble"];
  },

  events: {
    'click #submit-button': 'addGrumble'
  },

  render: function(){
    this.$el.empty();
    this.$el.show();
    this.$el.html(this.template());
  },

  unrender: function(){
    this.$el.empty();
    this.$el.hide();
  },

  addGrumble: function(){
    App.Collections.grumbles.create({
      title: $('#title-input').val(),
      author: $('#author-input').val(),
      content: $('#content-input').val(),
      image: $('#image-input').val()
    });
    $('#new-grumble-link').show();
    App.Routers.grumbles.navigate("", {trigger: true});
    this.unrender();
  },
});
