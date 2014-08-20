var GrumbleCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumble Collection');
  },
  save: function(){
    this.each(function(model){
      if (!model.has('id') || model.hasChanged()) { model.save(); }
    }, this)
  },
  model: GrumbleModel,
  url: '/grumbles',
})
