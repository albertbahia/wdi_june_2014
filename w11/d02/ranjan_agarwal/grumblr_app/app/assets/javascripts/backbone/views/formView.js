var GrumbleFormView = Backbone.View.extend({
  el: '#grumble-form',

  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/newGrumbleForm'];
    this.listenTo(this.collection, 'add', this.render);
    this.render();
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template());
  },

  events: {
    'click button': 'addGrumble'
  },

  addGrumble: function() {
    var titleInfo   = this.$('input[name="title"]').val();
    var contentInfo = this.$('textarea[name="content"]').val();
    var authorInfo  = this.$('input[name="author"]').val();
    var imageInfo   = this.$('input[name="image"]').val();
    this.collection.create({
      title:   titleInfo,
      content: contentInfo,
      author:  authorInfo,
      image:   imageInfo
    });
  }

});