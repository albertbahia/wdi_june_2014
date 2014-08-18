var GrumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumbles Collection');
  },
  model: Grumble,
  url: '/grumbles'
});
