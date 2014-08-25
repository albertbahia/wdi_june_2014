//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require handlebars
//=require_self
//= require_tree ./backbone/routers
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree ./backbone/views
//= require_tree ./templates
//= require_tree .

App = {
  Models: {},
  Views: {},
  Collections: {},
  Routers:{}
}

$(function(){
  App.Collections.grumbles = new App.Collections.Grumbles();
  App.Collections.grumbles.fetch({ reset: true });

  App.Views.grumbles = new App.Views.GrumbleList({
    collection: App.Collections.grumbles
  });

  App.Views.grumbleForm = new App.Views.GrumbleForm();

  App.Routers.grumbles = new App.Routers.Grumbles();
  Backbone.history.start();
});
