var SongListView = Backbone.View.extend({
  el: '#library',
  initialize: function() {
  	this.listenTo(this.collection, 'reset', this.render);
    this.render(); 
  },

  render: function() {
    this.$el.empty();  // for each song model object that I encounter in this collection:
    this.collection.each(function(song){  // I want to make a view, and stick a model into the property
      var songView = new SongView({
        model: song
      });
      // my ListView's element needs to append to itself whatever HTML
      //                      is sitting inside of the SongView's element
      this.$el.append(songView.$el);
    }, this);
  }
});