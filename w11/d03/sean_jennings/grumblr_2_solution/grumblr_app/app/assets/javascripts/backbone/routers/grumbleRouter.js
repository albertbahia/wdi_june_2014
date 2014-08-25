App.Routers.Grumbles = Backbone.Router.extend({

  routes: {
    '': 'index',
    'grumbles/new': 'new',
    'grumbles/:id/edit': 'edit'
  },

  index: function() {
    App.Collections.grumbles.fetch({reset: true});
     $('#new-grumble-modal').hide();
  },

  new: function() {
     $('#new-grumble-modal').fadeIn();
    console.log('Hi');
  }

  // edit: function() {
  //
  // }
});
