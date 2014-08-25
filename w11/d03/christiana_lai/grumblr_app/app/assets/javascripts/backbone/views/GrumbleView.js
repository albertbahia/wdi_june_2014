App.Views.Grumble = Backbone.View.extend({
  className: 'grumble',

  initialize: function() {
    this.template = HandlebarsTemplates['grumblrs/grumblr'];
    this.listenTo(this.model, 'change', this.render);
    this.render();
  },

  events: {
    'click .delete': 'deleteGrumble',
    'click .edit': 'editGrumble',
    'click .edit-grumble': 'updateGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  deleteGrumble: function() {
    this.model.destroy();
    this.remove();
  },

  editGrumble: function() {
    console.log('EDITING!');
    var grumble = this.model;
    App.Routers.grumbles.navigate('grumbles/'+ grumble.id +'/edit', {trigger: true});
    this.editTemplate = HandlebarsTemplates['grumblrs/editGrumblr'];
    this.$el.append(this.editTemplate());
  },

  updateGrumble: function() {
    console.log('UPDATING!');
    var editFormData = {
      avatar:  $('input[name="edit-avatar"]').val(),
      author:  $('input[name="edit-author"]').val(),
      title:   $('input[name="edit-title"]').val(),
      content: $('input[name="edit-content"]').val()
    };
    console.log(this.model);
    this.model.save(editFormData);
    $('input').val('');
    App.Routers.grumbles.navigate('', {trigger: true});
    }
});
