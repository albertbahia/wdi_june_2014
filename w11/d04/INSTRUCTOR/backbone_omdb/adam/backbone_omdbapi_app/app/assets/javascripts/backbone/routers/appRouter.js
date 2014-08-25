App.Routers.AppRouter = Backbone.Router.extend({
  initialize: function() {

  },

  routes: {
    "": "index",
    "movies/search/:query": "searchMovies",
    "movies/:imdbID": "showMovie",
    "movies/:imdbID/search/:query": "showMovieWithSearch"
  },

  index: function() {

  },

  searchMovies: function(query) {
    App.Views.searchView.search(query);
  },

  showMovie: function(imdbID) {
    var movie = new Movie({id: imdbID});
    movie.fetch();
  },

  showMovieWithSearch: function(imdbID, query) {
    App.Views.searchView.runSearch(query, function() {
      console.log()
      var movieView = App.Views.searchResults.movieViews[imdbID];
      movieView.toggleDetail();
    });
  }

});
