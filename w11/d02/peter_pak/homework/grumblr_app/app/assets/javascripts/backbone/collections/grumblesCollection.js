var grumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('grumble collection new one done');
  },
  url: '/grumbles',
  model: grumbleModel,
  save: function(){
    this.each(function(model){
      if (!model.has('id') || model.hasChanged()) { model.save(); }
      }, this)
    }
});
