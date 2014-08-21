SongListView = Backbone.View.extend({
  //you have to connect the view object so that you can append it to the DOM
  el: '#library',
  initialize: function() {
    //listener so that the collection is rendered when the collection is completely fetched
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },

  render: function(){
    this.$el.empty();
    this.collection.each(function(song) {
      var songView = new SongView({
        model: song
      });
      this.$el.append(songView.$el);
    }, this);
  }
});
