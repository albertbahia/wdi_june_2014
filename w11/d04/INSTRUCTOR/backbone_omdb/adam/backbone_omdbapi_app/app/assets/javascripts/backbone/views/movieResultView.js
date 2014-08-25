App.Views.MovieResultView = Backbone.View.extend({
  className: "movie-result",
  initialize: function() {
    this.resultTemplate = HandlebarsTemplates['movies/result'];
    this.detailTemplate = HandlebarsTemplates['movies/detail'];

    this.showDetailed = false;

    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  events: {
    'click': 'toggleDetail'
  },

  toggleDetail: function() {
    this.showDetailed = !this.showDetailed;
    this.render();
  },

  render: function() {
    if (this.showDetailed) {
      this.$el.html(this.detailTemplate(this.model.toJSON()));
    }
    else {
      this.$el.html(this.resultTemplate(this.model.toJSON()));
    }
  }
});
