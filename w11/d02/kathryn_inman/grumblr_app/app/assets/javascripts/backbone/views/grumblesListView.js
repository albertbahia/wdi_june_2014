var GrumblesListView = Backbone.View.extend({
  el: '#grumble-list',
  initialize: function() {
    console.log('grumbles list created');
    this.listenTo(this.collection, 'add', this.addGrumble)
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },
  render: function() {
    this.$el.empty();
    this.collection.each( function(grumble) {
      var grumbleView = new GrumbleView({
        model: grumble
      });
      this.$el.append(grumbleView.$el)
    }, this);
  },
  addGrumble: function() {
    var newView = new GrumbleView({
      model: this.collection.last()
    });
    this.$el.prepend(newView.$el)
  }
});
