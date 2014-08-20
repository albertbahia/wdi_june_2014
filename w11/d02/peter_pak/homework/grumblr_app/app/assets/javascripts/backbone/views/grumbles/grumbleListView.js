var GrumbleListView = Backbone.View.extend({
  el: '#bronx',
  initialize: function() {
    console.log('grumble in the bronx');
    this.listenTo(this.collection, 'reset', this.render);
    this.render();
  },
  render: function() {
    this.$el.empty();
    this.collection.each(function(grumble){
      var grumbleView = new GrumbleView ({
        model: grumble
      });
      this.$el.append(grumbleView.$el);
    }, this);
  }
});
