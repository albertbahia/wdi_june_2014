App.Views.GrumbleForm = Backbone.View.extend({
  el: '#form',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/form'];
    this.render();
  },

  collection: App.Collections.grumbles,

  events: {
      'click #create' : 'createNewEntry'
    },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template);
  },

  createNewEntry: function() {
    App.Collections.grumbles.create({
      author: $('#author').val(),
      title: $('#title').val(),
      avatar: $('#avatar').val(),
      content: $('#content').val()
    });
    this.render();
    App.Routers.grumbles.navigate('');
  }
});
