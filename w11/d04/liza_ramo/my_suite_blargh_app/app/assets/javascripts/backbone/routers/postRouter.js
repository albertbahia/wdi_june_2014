App.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/new': 'newPost',
    'posts/:id/edit': 'editPost'
  },
  initialize: function() {
    console.log('New Router');
    App.Collections.posts = new App.PostCollection();
    App.Views.postListView = new App.PostListView({collection: App.Collections.posts});
    App.Views.postFormView = new App.PostFormView({collection: App.Collections.posts});
  },
  index: function() {
    console.log('FIRED INDEX')
    App.Collections.posts.fetch({reset: true});
    $('#post-form').hide();
  },
  newPost: function() {
    console.log('FIRED NEW')
    App.Collections.posts.fetch({reset: true});
    $('#post-form').fadeIn(500)
  },
  editPost: function(id) {
    console.log('FIRED EDIT')
    App.Collections.posts.fetch({reset: true, success: function() {
        $('#'+ id).find('span.edit').click()
      }}
    );
    $('#post-form').hide();
  }
});
