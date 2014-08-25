App.Router.Grumble = Backbone.Router.extend({
  routes: {
    '':                  'index',
    'grumbles/new':      'new',
    'grumbles/:id/edit/:player': 'edit'
  },

  index: function() {
    App.Collection.grumbles.fetch({ reset: true });
  },

  new: function() {
    $('#new-grumble-modal').fadeIn();
  },

  edit: function(id) {

  }
});
