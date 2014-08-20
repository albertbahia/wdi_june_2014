var SongModel = Backbone.Model.extend({
  initialize: function(){
  console.log('New Song Model Created');
  },
  // creates a route so that Backbone can add on the proper info following REST
  // conventions
  urlRoot: '/songs'
});
