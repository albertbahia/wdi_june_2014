App.View.Form = Backbone.View.extend({
  el: '#new-grumble-modal',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/form'];
    this.render();
  },

  events: {
    'click input#add-grumble': 'addGrumble',
    'click span.close':        'closeModal'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template());
  },

  addGrumble: function(event) {
    event.preventDefault();

    var grumble = {
      title: this.$el.find('#title').val(),
      author: this.$el.find('#author').val(),
      content: this.$el.find('#content').val(),
      image: this.$el.find('#image').val(),
      avatar: this.$el.find('#avatar').val()
    };

    this.collection.add(grumble);

    this.render();
  },

  closeModal: function() {
    $('#new-grumble-modal').fadeOut();
    App.Router.router.navigate('');
  }
});
