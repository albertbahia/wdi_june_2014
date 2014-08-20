var SongListView = Backbone.View.extend({
  el: '#library',

  initialize: function(){
    console.log('Song List View, reporting for duty')
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },

  render: function(){
    this.$el.empty();
    this.collection.each(function(song){
      var songView = new SongView({
        model: song
      });
      this.$el.append(songView.$el);
    }, this);
  }

})
