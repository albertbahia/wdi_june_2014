App.PostCollection = Backbone.Collection.extend({
  model: App.PostModel,
  url: '/posts',
  initialize: function() {
    console.log('New Post Collection');
  },
  save: function() {
    this.each(function(model) {
      if(!model.has('id') || model.hasChanged()) { model.save(); }
    }, this)
  }
});
