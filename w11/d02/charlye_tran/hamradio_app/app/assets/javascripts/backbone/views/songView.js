var SongView = Backbone.View.extend({
  className: 'song',

  //after fetching the info, create the template
  initialize: function(){
    this.template = HandlebarsTemplates['songs/song'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  //user events
  events: {
    //key value pairs - the event and the function you want to run
    'click img': 'updatePlayer'
  },

  render: function(){
    this.$el.empty();
    //this.model = the backbone element
    //need to pass the template the JSON values so it can properly render
    this.$el.html(this.template(this.model.toJSON()));
  },

  updatePlayer: function(){
    //set the player from application.js to this song model
    player.model = this.model;
    player.render();
  }
});

// el: element that the view will belong to
// template: template we will use when the view shows itself
// render: a function that all backbone views have a render function but it is
//    useless so we write our own
// toJSON: objectify the model
