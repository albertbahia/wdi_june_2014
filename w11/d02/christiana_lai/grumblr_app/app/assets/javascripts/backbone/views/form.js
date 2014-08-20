var FormView = Backbone.View.extend({

  el: '#form',

  initialize: function() {
    this.template = HandlebarsTemplates['grumblrs/form'];
    this.listenTo(this.collection, 'add', this.render);
    this.render();
  },

  events: {
    'click .submit' : 'submitGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template());
  },

  submitGrumble: function() {
    avatarInfo = this.$('input[name="avatar"]').val();
    authorInfo = this.$('input[name="author"]').val();
    titleInfo = this.$('input[name="title"]').val();
    contentInfo = this.$('input[name="content"]').val();
    this.collection.create({
      avatar: avatarInfo,
      author: authorInfo,
      title: titleInfo,
      content: contentInfo,
    });
  }
});
