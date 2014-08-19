var GrumbleCollection = Backbone.Collection.extend({
  model: Grumble,
  url: '/grumbles'
});
