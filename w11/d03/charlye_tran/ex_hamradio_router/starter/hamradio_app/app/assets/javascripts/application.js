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
//= require_self
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
  Routers: {}
};

$(function() {

  App.Collections.songs = new App.Collections.Songs();

  App.Views.songs = new App.Views.SongList({
    collection: App.Collections.songs
  });

  App.Views.player = new App.Views.Player();

  //instantiate a new SongRouter
  App.Routers.song = new App.Routers.Songs();
  //saves the initial URL so that you can start managing the routes
  Backbone.history.start();

  //do not put this when a click event happens bc it'll create a new songFormView each time
  App.Views.songForm = new App.Views.SongForm();

  //don't need a listener bc we're already pointing the button to a fragment
  // $('.add_song_button').on('click', function(event){
  //   //event.preventDefault(); ----- prevents the default function from happening
  //   $('#new-song-modal').show();
  // });
});
