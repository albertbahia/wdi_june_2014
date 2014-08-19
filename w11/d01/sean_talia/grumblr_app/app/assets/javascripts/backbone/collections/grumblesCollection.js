var GrumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumbles Collection Created');
  },
  model: GrumbleModel,
  url: '/grumbles'
})
