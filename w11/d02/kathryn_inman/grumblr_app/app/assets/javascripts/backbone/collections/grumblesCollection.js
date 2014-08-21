var GrumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('new grumble collection');
  },
  model: Grumble,
  url: '/grumbles'
});
