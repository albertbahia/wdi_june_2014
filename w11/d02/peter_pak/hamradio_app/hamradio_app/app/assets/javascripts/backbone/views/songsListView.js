var SongsListView = Backbone.View.extend({
  el: '#library',
  initialize: function() {
    console.log('Song List View, reporting for duty');
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },
  render: function() {
    this.$el.empty();
    this.collection.each(function(song){
      var songView = new SongView({model: song});
      this.$el.append(songView.$el);
    }, this);
  }
});

//
// * Write a render function for the SongListView, and...
// * Instead of `console.log`-ing, have the initialize function call the render function
// * The render function should
//   * Empty the view's el
//   * Iterate over the view's collection. For each model,
//     * Create a SongView (like a partial view, remember?)
//     * Render the SongView
//     * Append the SongView's el to this view's el
