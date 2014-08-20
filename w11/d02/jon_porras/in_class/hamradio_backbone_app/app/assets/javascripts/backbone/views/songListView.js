// * Set up a `SongsListView`
//   * Create the file
//   * Define the constructor
//   * Ensure that the view will be tied to `#library`
//   * Set up an initialize function that will `console.log('Song List View, reporting for duty')`

var SongListView = Backbone.View.extend({
  el: '#library',
  initialize: function() {
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },
  render: function() {
    this.$el.empty();
    this.collection.each(function(song) {
      var songView = new SongView({
        model: song
      });
      this.$el.append(songView.$el);
    }, this);
  }
});
