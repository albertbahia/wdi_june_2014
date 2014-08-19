var grumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('grumble collection new one done');
  },
  url: '/grumbles',
  model: grumbleModel,
  save: function(attributes, options) {
    Backbone.sync();
  }
});
