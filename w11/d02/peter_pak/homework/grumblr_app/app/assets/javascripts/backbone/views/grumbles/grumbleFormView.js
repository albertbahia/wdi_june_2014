var GrumbleForm = Backbone.View.extend({
  el: '#form',
  initialize: function(){
    this.template = HandlebarsTemplates['grumbles/form'];
    this.render();
  },
  events: {
    'click #form-button': 'addGrumble'
  },
  render: function(){
    this.$el.empty();
    this.$el.append(this.template());
  },
  addGrumble: function(){
    var newAuthor = this.el['children']['author']['value'];
    var newTitle = this.el['children']['title']['value'];
    var newContent = this.el['children']['content']['value'];
    console.log(this)
    if (this.el['children'][6]['checked']) {
      var newImage = $('#murray').val();
    } else {
      newImage = $('#kitten').val();
    }
    var newData = {
      author: newAuthor,
      title: newTitle,
      content: newContent,
      image: newImage
    };
    grumbles.create(newData);
    grumbles.fetch({reset:true});
    this.render();
  }
});
