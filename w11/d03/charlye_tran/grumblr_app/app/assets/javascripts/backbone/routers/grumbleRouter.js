App.Routers.Router = Backbone.Router.extend({
  initialize: function(){
    console.log('made a router');
  },

  routes: {
    "": "index",
    "new": "new",
    "edit": "edit"
  },

  start: function(){
    Backbone.history.start();
  },

  index: function(){
    App.Collections.grumbles.fetch({reset: true});
    $('#grumble-form').hide();
  }


})
