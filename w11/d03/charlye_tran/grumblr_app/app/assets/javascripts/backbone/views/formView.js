App.Views.GrumbleForm = Backbone.View.extend({
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
    'click button#add-grumble': 'newGrumble'
  },
  newGrumble: function(e){
    var data = {
      author: this.$("[name='author']").val(),
      avatar: this.$("[name='avatar']").val(),
      title: this.$("[name='title']").val(),
      content: this.$("[name='content']").val()
    };
    App.Collections.grumbles.create(data, {success: function(data){ console.log('added')}});

    $('.input').val('');
    $('#grumble-form').hide();
    App.Routers.router.navigate('');
  }



})
