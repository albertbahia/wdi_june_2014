var SongView = Backbone.View.extend({

  className: 'song',

  initialize: function(){
    this.template = HandlebarsTemplates['songs/song'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },
  //key value pairs for events. key = event. value = function
  events: {
    'click img': 'updatePlayer'
  },

  render: function(){
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  updatePlayer: function(){
    console.log("I got clicked Yoo!");
    player.model = this.model;
    player.render();
  }
});

//4 Steps //
//1. el
//2. template
//3. render
//4. toJSON
