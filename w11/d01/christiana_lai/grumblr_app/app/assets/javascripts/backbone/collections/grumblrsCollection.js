var GrumblrsCollection = Backbone.Collection.extend({
  initialize: function() {
    console.log('New Grumblrs Collection');
  },

  model: GrumblrModel,
  url: '/grumblrs',

  Backbone.sync = function(method, model, options) {

  function success(result) {
    if (options.success) {
      options.success(result);
    }
  }

  function error(result) {
    if (options.error) {
      options.error(result);
    }
  }

  options || (options = {});

  switch (method) {
    case 'create':
      return grumblr.create(model, success, error);

    case 'update':
      return grumblr.update(model, success, error);

    case 'patch':
      return grumblr.patch(model, success, error);

    case 'delete':
      return grumblr.destroy(model, success, error);

    case 'read':
      if (model.cid) {
        return grumblr.find(model, success, error);
      } else {
        return grumblr.findAll(model, success, error);
      }
  }
}
});
