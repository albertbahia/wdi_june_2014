App.Routers.Router = Backbone.Router.extend({
  initialize: function(){
    console.log('made a router');
  },

  routes: {
    "": "index",
    "grumbles/new": "new",
    "edit": "edit"
  },

  start: function(){
    Backbone.history.start();
  },

  index: function(){
    App.Collections.grumbles.fetch({reset: true});
    $('#grumble-form').hide();
  },

  new: function(){
    $('#grumble-form').show();
  }

  edit: function(){
    
    $('#grumble-form').hide();
  }


})
