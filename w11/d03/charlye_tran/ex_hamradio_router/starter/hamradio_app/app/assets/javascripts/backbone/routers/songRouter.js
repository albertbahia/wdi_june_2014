App.Routers.Songs = Backbone.Router.extend({
  routes: {
    //root route = "" in backbone
    "": "index",
    //no waffle fries in the routes
    "songs/new": "new",
    "songs/:id/play": "play"
  },

  index: function(){
    $('#new-song-modal').fadeOut();
    //only really needed in the index function instead of globally
    App.Collections.songs.fetch({reset: true});
  },

  //user events will trigger events but if you want to console.log or manually
  //set the route, you have to set the option trigger to true
  new: function(){
    if (App.Collections.songs.models.length === 0) {
      App.Collections.songs.fetch({ reset: true });
    }
    $('#new-song-modal').fadeIn();
  },

  play: function(id){
    App.Collections.songs.fetch({
      success: function(){
        App.Views.player.setSong(App.Collections.songs.get(id));
      }
    });
  }

});
