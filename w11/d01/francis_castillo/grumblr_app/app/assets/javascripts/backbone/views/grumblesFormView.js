var GrumbleFormView = Backbone.View.extend({
  el: '#grumble',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/grumblesForm'];
    this.render()
  },
  events: {
    'click .add': 'formSubmit'
  },
  render: function() {
    this.$el.empty();
    this.$el.html(this.template());
  },
  formSubmit: function(e) {

    e.preventDefault();
    var model = this.model;
    var valueArr = []
    this.$el.find('input[name]').each(function() {
      valueArr.push(this.value);
    })

    var grum = new GrumbleModel({author: valueArr[0], title: valueArr[1], content: valueArr[2], avatar: valueArr[3]});
    grum.save();
    this.render();
  }
})
