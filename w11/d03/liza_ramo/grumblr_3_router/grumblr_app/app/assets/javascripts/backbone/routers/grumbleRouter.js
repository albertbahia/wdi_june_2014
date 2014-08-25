App.Routers.Grumbles = Backbone.Router.extend({

  routes: {
    '': 'index',
    'grumbles/new': 'new',
    'grumbles/:id/edit': 'edit'
  },

  index: function() {
    App.Collections.grumbles.fetch({ reset: true });
    $('#grumble-form').hide();
  },

  new: function() {
    var grumbles = App.Collections.grumbles;
    $('#grumble-form').show();
  },

  edit: function() {

  }

});
