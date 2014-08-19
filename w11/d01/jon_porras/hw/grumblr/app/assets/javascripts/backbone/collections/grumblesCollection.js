var GrumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumbles Collection.');
  },
  model: GrumbleModel,
  url: '/grumbles',
  save: function(){
        this.each(function(grumble) {
        grumble.save();
        });
    }
})
