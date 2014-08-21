App.Views.GrumbleList = Backbone.View.extend({
  el: '#grumble-list',
  initialize: function() {
    console.log('New Grumble View');
    this.listenTo(this.collection, 'add', this.addOne)
    this.listenTo(this.collection, 'reset', this.addAll)
  },
  addOne: function(grumble){
    var grumbleView = new App.Views.Grumble({model: grumble});
    this.$el.prepend(grumbleView.el);
  },
  addAll: function(){
    this.collection.each(function(song){
      this.addOne(song);
    },this)
  }
});
