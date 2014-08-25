
//= require jquery
//= require jquery_ujs

//= require underscore
//= require backbone
//= require handlebars
//= require_self
//= require_tree ./templates
//= require_tree ./backbone/routers
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree ./backbone/views
//= require_tree .

App = {
  Models: {},
  Views: {},
  Collections: {},
  Routers: {}
};

$(function(){
  App.Collections.grumbles = new App.Collections.Grumbles;
  App.Views.grumbleForm = new App.Views.GrumbleForm({collection: App.Collections.grumbles})
  App.Views.grumbles = new App.Views.Grumbles({collection: App.Collections.grumbles});
  App.Collections.grumbles.fetch();
  App.Views.grumbleForm = new App.Views.GrumbleForm();
  App.Routers.grumbles = new App.Routers.Grumbles();

  Backbone.history.start(); 

});
