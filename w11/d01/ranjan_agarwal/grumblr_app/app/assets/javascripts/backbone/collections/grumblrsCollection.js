var GrumblrsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumblrs Collection')
  },
  model: GrumblrModel,
  url: '/grumblrs',
  save: function() {
    this.each(function(grumblr) {
      grumblr.save
    });
  }
});

