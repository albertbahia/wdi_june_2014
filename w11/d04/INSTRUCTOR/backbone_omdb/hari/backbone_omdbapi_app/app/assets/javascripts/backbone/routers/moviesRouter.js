App.Routers.MoviesRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'search/:query': 'search',
    'movies/:id(/:query)': 'movieDetail'
  },

  initialize: function() {
    App.Collections.movies = new App.Collections.MoviesCollection();
    App.Views.searchResultsView = new App.Views.MoviesCollectionView({
      collection: App.Collections.movies
    });
    App.Views.searchFormView = new App.Views.SearchFormView({
      collection: App.Collections.movies
    });
    App.Views.movieModalView = new App.Views.MovieModalView();
  },

  index: function() {
    $('#search-input').val('');
    App.Views.movieModalView.hide();
    App.Collections.movies.reset();
  },

  search: function(query) {
    $('#search-input').val(query);
    App.Views.movieModalView.hide();
    App.Views.searchFormView.search();
  },

  movieDetail: function(id, query) {
    if (query) {
      $('#search-input').val(query);
      App.Views.searchFormView.search(true);
    }
    var movie = new App.Models.Movie({ id: id });
    movie.fetch({
      success: function() {
        App.Views.movieModalView.setMovie(movie);
        App.Views.movieModalView.show();
      }
    })
  }
});
