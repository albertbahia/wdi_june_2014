var GrumblesCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log("New Grumble Collection")
  },
  model: GrumbleModel,
  url: '/grumbles'
})
