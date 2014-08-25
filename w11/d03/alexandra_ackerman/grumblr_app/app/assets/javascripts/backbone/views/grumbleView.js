App.Views.Grumble = Backbone.View.extend({
  className: 'grumble',

  initialize: function(){
    this.template = HandlebarsTemplates["grumbles/grumble"];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },

  events:{
    'click button.delete': 'destroyGrumble',
    'click button.edit': 'editGrumble',
    'click #submit-button': 'updateGrumble'
  },

  render: function(){
    this.$el.empty();
    this.$el.html(this.template(this.model.toJSON()));
  },

  destroyGrumble: function(){
    this.model.destroy();
  },

  editGrumble: function(){
    location.href = "#grumbles/"+this.model.id+"/edit";
    // var form = HandlebarsTemplates["grumbles/newGrumble"];
    // App.Routers.grumbles.navigate("grumbles/"+this.model.id+"/edit");
    // this.$el.append(form(this.model.toJSON()));
  },

  updateGrumble:function(){
   this.model.set({
      title: $('#title-input').val(),
      author: $('#author-input').val(),
      content: $('#content-input').val(),
      image: $('#image-input').val()
    });
    this.model.save();
    App.Routers.grumbles.navigate("");
  }
});