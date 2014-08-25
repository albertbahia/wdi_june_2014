App.Views.GrumbleList = Backbone.View.extend({
  el: '#grumble-list',
  initialize: function() {
    $('#grumble-form').hide();
    console.log('New Grumble View');
    this.listenTo(this.collection, 'add', this.addOne)
    this.listenTo(this.collection, 'reset', this.addAll)
  },

  addOne: function(grumble){
    var grumbleView = new App.Views.Grumble({model: grumble});
    grumbleView.$el.insertAfter(this.$el('span.add'));
  },
  addAll: function(){
    console.log('addGrumbleList')
    App.Collections.grumbles.each(function(grumble){
      this.addOne(grumble);
    },this)
  },

  events: {
    'click span.add': 'showForm'
  },

  showForm: function(){
    App.Routers.router.navigate('grumbles/new')
    $('#grumble-form').fadeIn(500);
  }
});
