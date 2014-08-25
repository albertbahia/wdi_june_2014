
//= require jquery
//= require jquery_ujs

//= require underscore
//= require backbone
//= require handlebars
//= require_tree ./backbone/routers
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree ./backbone/views
//= require_tree ./templates
//= require_tree .

App = {
  Models: {},
  Views: {},
  Collections: {}
};

$(document).ready(function(){
  App.router = new App.Router();
  Backbone.history.start();
});
