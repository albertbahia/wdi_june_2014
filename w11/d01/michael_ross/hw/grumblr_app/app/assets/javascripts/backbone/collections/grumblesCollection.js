var GrumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log("New Grumble Collection has been created.")
  },
  model: GrumbleModel,
  url: '/grumbles'
});
