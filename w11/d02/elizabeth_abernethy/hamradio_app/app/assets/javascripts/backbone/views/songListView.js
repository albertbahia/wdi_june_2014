var SongListView = Backbone.View.extend({
  // tied to the library div on the main page
  el: '#library',
  initialize: function() {
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },

  render: function() {
    this.$el.empty();
    this.collection.each(function(song){
      var songView = new SongView({
        model: song
      });
      this.$el.append(songView.$el);
    }, this);
  }
});
