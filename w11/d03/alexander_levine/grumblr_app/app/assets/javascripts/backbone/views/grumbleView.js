App.Views.Grumble = Backbone.View.extend({
  className: 'grumble',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/grumble'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events: {
    'click button.delete': 'deleteGrumble',
    'click button.edit': 'renderEditForm',
    'click button.edit-confirm': 'editGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  renderEditForm: function() {
    console.log('hiiiayya')
    this.$el.find('.grumble-edit-form').show();
    var grumble = this.model;
    App.Routers.grumbles.navigate('grumbles/' + grumble.id + '/edit');
  },

  editGrumble: function() {
    var grumble = this.model;
    var editForm = this.$el.find('.grumble-edit-form');
    grumble.set({
      author: editForm.find("input[name='author']").val(),
      title: editForm.find("input[name='title']").val(),
      avatar: editForm.find("input[name='avatar']").val(),
      content: editForm.find("input[name='content']").val()
    });
    grumble.save();
    App.Collections.grumbles.fetch({ reset: true });
    this.$el.find('.grumble-edit-form').hide();
    App.Routers.grumbles.navigate('');
  },

  deleteGrumble: function() {
    this.model.destroy();
  }
});
