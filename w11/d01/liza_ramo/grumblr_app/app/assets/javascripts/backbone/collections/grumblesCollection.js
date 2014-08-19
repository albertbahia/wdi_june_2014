var GrumblrsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumblrs Collection Created');
  },
  model: GrumblrModel,
  url: '/grumblr'

});
