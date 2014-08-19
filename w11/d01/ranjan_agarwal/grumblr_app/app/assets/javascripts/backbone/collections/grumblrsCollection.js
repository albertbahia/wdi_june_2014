var GrumblrsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumblrs Collection')
  },
  model: GrumblrModel,
  url: '/grumblrs'
});

