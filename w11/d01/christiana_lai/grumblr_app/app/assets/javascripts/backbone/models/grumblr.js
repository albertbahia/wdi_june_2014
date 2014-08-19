var GrumblrModel = Backbone.Model.extend({
  initialize: function() {
    console.log('New Grumblr Model Create');
  },
  urlRoot: '/grumblrs'
});
