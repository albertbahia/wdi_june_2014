App.GrumbleCollection = Backbone.Collection.extend({
  model: App.GrumbleModel,
  url: '/grumbles',
  initialize: function() {
    console.log('New Grumble Collection');
  },
  save: function(){
    this.each(function(model){
      if (!model.has('id') || model.hasChanged()) { model.save(); }
    }, this)
  }
});