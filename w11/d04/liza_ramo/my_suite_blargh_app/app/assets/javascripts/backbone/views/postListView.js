App.PostListView = Backbone.View.extend({
  el: '#post-list',
  initialize: function() {
    console.log('New Post View');
    this.listenTo(this.collection, 'add', this.addOne)
    this.listenTo(this.collection, 'reset', this.addAll)
  },
  addOne: function(post){
    var postView = new App.PostView({model: post});
    postView.$el.insertAfter(this.$('span.add'));
  },
  addAll: function(){
    this.collection.each(function(post){
      this.addOne(post);
    },this)
  },
  // DOM EVENTS
  events: {
    'click span.add':'showForm'
  },
  showForm: function() {
    App.router.navigate('posts/new')
    $('#post-form').fadeIn(500);
  }
});
