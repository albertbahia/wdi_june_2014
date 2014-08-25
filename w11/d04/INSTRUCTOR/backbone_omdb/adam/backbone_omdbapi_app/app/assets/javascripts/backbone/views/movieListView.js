App.Views.MovieList = Backbone.View.extend({
  className: 'movie-list',

  initialize: function() {
    this.listenTo(this.collection, 'reset', this.renderAll);
    this.listenTo(this.collection, 'add', this.renderOne);
    this.render();
    this.movieViews = {};
  },

  events: {},

  renderAll: function() {
    this.$el.empty();
    this.collection.each(this.renderOne, this);
  },

  renderOne: function(movie) {
    var movieResultView = new App.Views.MovieResultView({model: movie});
    this.movieViews[movie.get('imdbID')] = movieResultView;
    this.$el.append(movieResultView.$el);
  }
});
