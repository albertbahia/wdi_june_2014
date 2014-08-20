//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require backbone
//= require handlebars
//= require_tree ./backbone/routers
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree ./backbone/views
//= require_tree ./templates
//= require_tree .

$(function() {
  grumbles = new GrumbleCollection();
  grumbles.fetch({ reset: true });
  collection = new GrumbleListView({
    collection: grumbles
  });
  form = new NewGrumbleView();

});
