App.Collections.MoviesCollection = Backbone.Collection.extend({
  model: App.Models.Movie,
  url: '/movies/search'
});
