var GrumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumble Collection Created');
  },
  model: Grumble,
  url: '/grumbles'
});
