var SongsCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('collections');   
  },
  model: SongModel, 
  url: '/songs'
});  