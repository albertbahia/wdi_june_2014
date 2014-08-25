App.Model.Grumble = Backbone.Model.extend({
  initialize: function() {
    console.log('New Grumble Created');
  },
  urlRoot: '/grumbles'
});
