App.Views.Grumble = Backbone.View.extend({
  className: 'grumble',
  initialize: function () {
    this.template = HandlebarsTemplates['grumbles/grumble'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'add', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },
  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  events: {
    'click #delete': 'delete',
    'click #showEdit': 'showEdit',
    'click #edit': 'edit'
  },

  delete: function() {
    this.model.destroy();
  },

  showEdit: function() {
    $('#editForm').remove();
    var editForm = new App.Views.EditForm({
      model: this.model
    });
    this.$el.append(editForm.$el);
  },

  edit: function() {
    var grumble = this.model;
    grumble.set({
      author: $('#edit-author').val(),
      title: $('#edit-title').val(),
      avatar: $('#edit-avatar').val(),
      content: $('#edit-content').val()
    });
    grumble.save();
    App.Routers.grumbles.navigate('');
  }

});
