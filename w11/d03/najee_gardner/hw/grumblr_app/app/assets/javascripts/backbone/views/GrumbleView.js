App.View.Grumble = Backbone.View.extend({
  className: 'grumble',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/grumble'];
    this.editTemplate = HandlebarsTemplates['grumbles/editform'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events: {
    'click button.delete': 'removeGrumble',
    'click button.edit':   'editGrumble',
    'click button.update': 'updateGrumble'
  },

  render: function() {
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  removeGrumble: function() {
    this.model.destroy();
  },

  editGrumble: function() {
    App.Router.router.navigate('grumbles/' + this.model.id + '/edit');
    $('body').find('#edit-form').remove();
    this.$el.append(this.editTemplate(this.model.toJSON()));
  },

  updateGrumble: function() {
    App.Router.router.navigate('');
    var grumble = {
      title: this.$el.find('#title').val(),
      author: this.$el.find('#author').val(),
      content: this.$el.find('#content').val(),
      image: this.$el.find('#image').val(),
      avatar: this.$el.find('#avatar').val()
    }

    this.model.set(grumble);
    this.model.save();
  }

});
