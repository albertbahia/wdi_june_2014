App.GrumbleView = Backbone.View.extend({
  className: 'grumble',
  initialize: function() {
    console.log('New Grumble View');
    this.listenTo(this.model, 'change', this.render)
    this.listenTo(this.model, 'destroy', this.remove)
    this.render();
  },
  template: HandlebarsTemplates['grumbles/single'],
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
  },
  // DOM EVENTS
  events: {
    'click span.destroy': 'destroyView',
    'click span.edit': 'editGrumble',
    'click span.edit-grumble': 'updateGrumble',
    'click span.cancel': 'cancel'
  },
  destroyView: function() {
    this.model.destroy();
  },
  editGrumble: function() {
  App.router.navigate('grumbles/'+ this.model.id +'/edit');
    this.$('.grumble-form-div').remove();
    this.$el.append(HandlebarsTemplates['grumbles/form'](this.model.toJSON()));
    this.$('.grumble-form-div').show();
  },
  updateGrumble: function() {
    var newData = {
      author: this.$("[name='author']").val(),
      avatar: this.$("[name='avatar']").val(),
      title: this.$("[name='title']").val(),
      content: this.$("[name='content']").val()
    };
    this.model.save(newData, {success: function() {
      App.router.navigate('');
    }});
  },
  cancel: function() {
    App.router.navigate('');
    this.$('.grumble-form-div').remove();
  }
});