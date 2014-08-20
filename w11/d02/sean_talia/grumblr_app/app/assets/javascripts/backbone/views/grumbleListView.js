var GrumbleListView = Backbone.View.extend({
  el: '#grumble-list',
  initialize: function() {
    this.listenTo(this.collection, 'add', this.addModel);
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },
  render: function() {
    this.$el.empty();
    this.collection.each(function(grumble){
      var grumbleView = new GrumbleView({ model:grumble })
      this.$el.prepend(grumbleView.$el);
    }, this);
  },
  addModel: function(addedModel){
    var grumbleView = new GrumbleView({ model: addedModel })
    this.$el.prepend(grumbleView.$el);
  }
});
