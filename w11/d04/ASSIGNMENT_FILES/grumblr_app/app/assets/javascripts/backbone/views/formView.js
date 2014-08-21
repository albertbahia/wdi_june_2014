App.GrumbleFormView = Backbone.View.extend({
  el: '#grumble-form',
  initialize: function(){
    console.log('New Form View');
    this.render();
  },
  template: HandlebarsTemplates['grumbles/form'],
  render: function(){
    this.$el.html(this.template());
  },
  // DOM EVENTS
  events: {
    'click span.new-grumble': 'newGrumble',
    'click span.cancel': 'cancel'
  },
  newGrumble: function(){
    var data = {
      author: this.$("[name='author']").val(),
      avatar: this.$("[name='avatar']").val(),
      title: this.$("[name='title']").val(),
      content: this.$("[name='content']").val()
    };
    this.collection.create(data, {success: function(){ 
        $('input').val('');
        $('#grumble-form').hide(100);
        App.router.navigate('')
      }
    });
  },
  cancel: function(){
    this.$el.fadeOut(200);
    App.router.navigate('')
  }

})