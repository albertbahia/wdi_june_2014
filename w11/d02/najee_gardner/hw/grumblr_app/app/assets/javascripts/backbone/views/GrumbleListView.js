var GrumbleListView = Backbone.View.extend({
  el: '#grumbles-list',
  initialize: function() {
    this.listenTo(this.collection, 'reset', this.render);
    this.listenTo(this.collection, 'add', this.updateList);
    this.render();
  },

  render: function() {
    this.$el.empty();
    this.collection.each(function(grumble) {
      var grumbleView = new GrumbleView({ model: grumble })
      this.$el.prepend(grumbleView.$el);
    }, this);
  },

  updateList: function(addedGrumble) {
    addedGrumble.save();
    var grumbleView = new GrumbleView({ model: addedGrumble });

    this.$el.prepend(grumbleView.$el);
  }
});
