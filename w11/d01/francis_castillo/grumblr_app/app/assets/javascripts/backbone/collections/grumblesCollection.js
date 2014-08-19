var GrumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('Added new Grumbles Collection!');
  },
  model: GrumbleModel,
  url: '/grumbles',
  save: function(){
    Backbone.sync('create', this, {
      success: function() {
        console.log('Saved!');
      }
    });
  },
  save: function(){
    Backbone.sync('update', this, {
      success: function() {
        console.log('Saved!');
      }
    });
  }
})
