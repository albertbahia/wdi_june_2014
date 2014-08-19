var GrumblesCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('created a new collection');
  },
  model: GrumbleModel,
  url: '/grumbles',
  save: function(){
      this.models.forEach(function(grumble){
        grumble.save();
      });
    }
});
