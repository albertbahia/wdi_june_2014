App.Routers.Grumbles = Backbone.Router.extend({

  routes: {
    '': 'index',
    'grumbles/new': 'new',
    'grumbles/:id/edit': 'edit'
  },

  index: function() {
    App.Collections.grumbles.fetch({reset: true});
  },

  new: function() {
    console.log('new song yo.');
    $('#grumble-form').show();
    $('#new-grumble').hide();
  },

  edit: function(songID) {
    console.log('editing yo.')
  }


});
