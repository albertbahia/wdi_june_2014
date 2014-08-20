var SongListView = Backbone.View.extend({
  el: "#library",
  initialize: function() {
    //if this collection ever gets reset, listen to it and re-render the collection
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },

  render: function() {
    this.$el.empty();
    this.collection.each(function(song) {
      var songView = new SongView({ model: song });
      this.$el.append(songView.$el);
    }, this);
  }
});
