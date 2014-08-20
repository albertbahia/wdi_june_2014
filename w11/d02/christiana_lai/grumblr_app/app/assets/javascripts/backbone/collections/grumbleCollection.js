var GrumbleCollection = Backbone.Collection.extend({
  model: GrumbleModel,
  url: '/grumbles',
  initialize: function() {
    console.log('New Grumble Collection');
  },
  save: function(){
    this.each(function(model){
      if (!model.has('id') || model.hasChanged()) { model.save(); }
    }, this);
  }
});
