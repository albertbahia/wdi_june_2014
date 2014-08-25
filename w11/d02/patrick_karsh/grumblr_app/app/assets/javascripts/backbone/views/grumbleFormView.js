var grumbleFormView = Backbone.View.extend({
  el: '#grumble-form',

  initialize: function(){
    this.template = HandlebarsTempaltes["grumbles/newGrumble"];
    this.render(); 
  }, 

  events: {
    'click #submit-button': 'addGrumble'
  }, 

  render: function(){
    this.$el.empty(); 
    this.$el.html(this.template()); 
  }, 

  addGrumble: function(){
    grumbles.create({
      title: $('#title-input').val(),
      author: $('#author-input').val(),
      content: $('#content-input').val(),
      image: $('#image-input').val()
    });
    this.render();
  }
})