var FormView = Backbone.View.extend({
  el: '#grumble-form',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/form'];
    this.render();
  },
  events: {
    'click #submit-button': 'createGrumble'
  },
  render: function() {
    this.$el.empty();
    this.$el.html(this.template());
  },
  createGrumble: function(){
    var newGrumble = {
      title: this.$el.find('#title').val(),
      author: this.$el.find('#author').val(),
      avatar: this.$el.find('#avatar').val(),
      content: this.$el.find('#content').val()
    };
    var newGrumbleModel = new GrumbleModel(newGrumble);
    this.collection.create(newGrumbleModel);
  }
})
