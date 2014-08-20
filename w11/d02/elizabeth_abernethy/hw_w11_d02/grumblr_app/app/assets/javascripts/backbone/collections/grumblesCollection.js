var GrumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumbles Collection');
  },
  model: GrumbleModel,
  url: '/grumbles',
  save: function(){
    this.each(function(model){
      if (!model.has('id') || model.hasChanged()) { model.save(); }
    }, this)
  }
});
