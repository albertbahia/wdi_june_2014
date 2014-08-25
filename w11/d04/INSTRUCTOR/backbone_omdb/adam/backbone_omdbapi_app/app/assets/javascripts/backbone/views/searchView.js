App.Views.SearchView = Backbone.View.extend({
  el: '#search',
  events: {
    'click button': 'searchByBox'
  },

  searchFromBox: function() {
    var $searchBox = this.$('input.query');
    var query = $searchBox.val();
    App.Routers.appRouter.navigate("movies/search/" + query);
    this.runSearch(query);
  },

  runSearch: function(query, callback) {
    var $searchBox = this.$('input.query');
    $searchBox.val(query);
    App.Collections.searchResults.fetch({
      reset: true,
      data: {query: query},
      success: callback
    });
  }
})
