App.Routers.Grumbles = Backbone.Router.extend({

  routes: {
    '': 'index',
    'grumbles/new': 'new',
    'grumbles/:id/edit': 'update'
  },

  index: function() {
    console.log('hii')
    App.Collections.grumbles.fetch({reset: true});
    $('#form').hide();
  },

  new: function() {
    $('#form').show();
  },

  update: function(id) {


  }

});
