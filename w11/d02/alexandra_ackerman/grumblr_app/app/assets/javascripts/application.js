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

$(function(){
  grumbles = new GrumblesCollection();
  grumbles.fetch({ reset: true });

  grumbleFeed = new GrumbleListView({
    collection: grumbles
  });

  grumbleForm = new GrumbleFormView();

});