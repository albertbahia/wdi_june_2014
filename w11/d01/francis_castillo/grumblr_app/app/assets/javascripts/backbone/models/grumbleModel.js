var GrumbleModel = Backbone.Model.extend({
  initialize: function() {
    console.log('Add New Grumble');
  },
  urlRoot: '/grumbles'
})
