var GrumbleModel = Backbone.Model.extend({
  initialize: function(){
    console.log('New Grumble Model created');
  },
  urlRoot: '/grumbles'
});
