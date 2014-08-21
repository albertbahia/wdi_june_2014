App.Collection.Grumbles = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumble Collection Created');
  },
  model: App.Model.Grumble,
  url: '/grumbles'
});
