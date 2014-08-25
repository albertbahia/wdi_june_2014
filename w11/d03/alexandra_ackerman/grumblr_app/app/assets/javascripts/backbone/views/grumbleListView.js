App.Views.GrumbleList = Backbone.View.extend({
  el: '#grumble-list',

  initialize: function(){
    this.listenTo(this.collection, 'reset', this.render);
    this.listenTo(this.collection, 'add', this.render);
    this.render();
  },

  render: function() {
    this.$el.empty();
    this.collection.each(function(grumble){
      var grumbleView = new App.Views.Grumble({
        model: grumble
      });
      this.$el.append(grumbleView.$el);
    }, this);
  }
});