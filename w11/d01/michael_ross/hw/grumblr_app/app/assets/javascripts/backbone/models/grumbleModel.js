var GrumbleModel = Backbone.Model.extend({
  initialize: function() {
    console.log("A new grumble model has been created")
  },
  urlRoot: "/grumbles"
});
