App.PostView = Backbone.View.extend({
  className: 'post',
  initialize: function() {
    console.log('New Post View');
    this.listenTo(this.model, 'change', this.render)
    this.listenTo(this.model, 'destroy', this.remove)
    this.render();
  },
  template: HandlebarsTemplates['posts/single'],
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
  },
  events: {
    'click span.destroy': 'destroyView',
    'click span.edit': 'editPost',
    'click span.edit-post': 'updatePost',
    'click span.cancel': 'cancel'
  },
  destroyView: function() {
    this.model.destroy();
  },
  editPost: function() {
  App.router.navigate('posts/'+ this.model.id +'/edit');
    this.$('.post-form-div').remove();
    this.$el.append(HandlebarsTemplates['posts/form'](this.model.toJSON()));
    this.$('.post-form-div').show();
  },
  updatePost: function() {
    var newData = {
      title: this.$("[name='title']").val(),
      content: this.$("[name='content']").val(),
      image: this.$("[name='image']").val()
    };
    this.model.save(newData, {success: function() {
      App.router.navigate('');
    }});
  },
  cancel: function() {
    App.router.navigate('');
    this.$('.post-form-div').remove();
  }
});
