var GrumblesCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('collection'); 
  }, 
  model: GrumbleModel, 
  urlRoot: '/grumbles'
}); 