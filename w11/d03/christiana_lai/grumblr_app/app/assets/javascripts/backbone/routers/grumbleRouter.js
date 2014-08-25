App.Routers.Grumbles = Backbone.Router.extend({

  routes: {
    '': 'index',
    'grumbles/new': 'new'
  },

  index: function() {
    App.Collections.grumbles.fetch({reset:true});
  },

  new: function() {
  var grumbles = App.Collections.grumbles;
    if (grumbles.models.length === 0) {
      grumbles.fetch({reset: true});
    }
    $('#form').fadeIn();
  },
});
