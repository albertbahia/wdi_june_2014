var Grumble = Backbone.Model.extend({
  initialize: function() {
    console.log('new grumble object');
  },
  urlRoot: '/grumbles'
});
