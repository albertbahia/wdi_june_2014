// add event to button, do addGrumble
// get all parameters from the form
// create model from there


var NewGrumbleView = Backbone.View.extend({
  el: '#form',
  initialize: function() {
    this.template = HandlebarsTemplates['grumbles/newGrumbleForm']
    this.render();
  },
  events: {
    'click input.add-grumble': 'addGrumble'
  },
  render: function() {
    this.$el.empty();
    this.$el.append(this.template());
  },
  addGrumble: function(ev) {
    // ev.preventDefault();

    var author = $('.new-author');
    var title = $('.new-title');
    var content = $('.new-content');
    var avatar = $('.new-avatar');

    // create new empty model:
    var newGrumble = new GrumbleModel();
    newGrumble.set({title: title});
    newGrumble.set({author: author});
    newGrumble.set({content: content});
    newGrumble.set({avatar: avatar});

    newGrumble.save();
  }
});
