App.PostFormView = Backbone.View.extend({
  el: '#post-form',
  initialize: function(){
    console.log('New Form View');
    this.render();
  },
  template: HandlebarsTemplates['posts/form'],
  render: function(){
    this.$el.html(this.template());
  },
  // DOM EVENTS
  events: {
    'click span.new-post': 'newPost',
    'click span.cancel': 'cancel'
  },
  newPost: function(){
    var data = {
      title: this.$("[name='title']").val(),
      content: this.$("[name='content']").val(),
      image: this.$("[name='image']").val()
    };
    this.collection.create(data, {success: function(){
        $('input').val('');
        $('#post-form').hide(100);
        App.router.navigate('')
      }
    });
  },
  cancel: function(){
    this.$el.fadeOut(200);
    App.router.navigate('')
  }

})
