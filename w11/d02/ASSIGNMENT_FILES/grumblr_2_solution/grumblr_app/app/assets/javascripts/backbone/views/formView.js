var GrumbleFormView = Backbone.View.extend({
  el: '#grumble-form',
  initialize: function(){
    console.log('New Form View');
    this.render()
  },
  template: HandlebarsTemplates['grumbles/form'],
  render: function(){
    this.$el.html(this.template())
  },
  events: {
    'click button': 'newGrumble'
  },
  newGrumble: function(e){
    var data = {
      author: this.$("[name='author']").val(),
      avatar: this.$("[name='avatar']").val(),
      title: this.$("[name='title']").val(),
      content: this.$("[name='content']").val()
    };
    this.collection.create(data, {success: function(data){ console.log('added')}});
  }
})