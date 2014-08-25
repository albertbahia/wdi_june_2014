GrumbleListView = Backbone.View.extend({

  el: '#grumble-list',

  initialize: function() {
    this.listenTo(this.collection, 'reset', this.render);
    this.listenTo(this.collection, 'add', this.render);
    this.render();
  },

  render: function() {
    this.$el.empty();
    this.collection.each(function(grumble) {
      var grumbleView = new GrumbleView({
        model: grumble
      });
      this.$el.append(grumbleView.$el);
    }, this);
  }
});
