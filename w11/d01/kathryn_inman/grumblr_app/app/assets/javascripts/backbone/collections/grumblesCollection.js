var grumblesCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('new grumble collection');
  },
  model: Grumble,
  url: '/grumbles',
  save: function() {
    var collection = this;
    options = {
      success: function(model) {
        collection.reset(model);
      }
    };
    return Backbone.sync('create', this, options);
  }
});
