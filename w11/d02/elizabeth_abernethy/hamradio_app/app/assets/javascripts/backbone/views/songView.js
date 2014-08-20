var SongView = Backbone.View.extend({

  className: 'song',

  initialize: function () {
    this.template = HandlebarsTemplates['songs/song'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events: {
    // keys = what I want it to listen to, values = what it is doing
    'click img': 'updatePlayer'
  },

  render: function () {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  updatePlayer: function() {
    player.model = this.model;
    player.render();
  }

});


// "BACKBONE VIEWS", a poem by Hari Mohanraj:

// el - is for my piece of the big DOM tree
// template - is for the way that you’ll see me
// render - is how you would tell me, to fill me own el
// toJSON - is to objectify a model for Handlebar eyes
