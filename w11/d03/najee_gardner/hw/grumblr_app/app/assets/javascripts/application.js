// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require handlebars
//= require handlebars.runtime
//= require_self
//= require_tree ./backbone/routers
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree ./backbone/views
//= require_tree ./templates
//= require_tree .

App = {
  Model:      {},
  Collection: {},
  View:       {},
  Router:     {}
}

$(function() {
  App.Collection.grumbles = new App.Collection.Grumbles();
  var grumbles = App.Collection.grumbles;
  grumbles.fetch({ reset: true });
  App.View.grumbleList = new App.View.GrumbleList({ collection: grumbles });
  App.View.form = new App.View.Form({ collection: grumbles });
  App.Router.router = new App.Router.Grumble();
  Backbone.history.start();
});
