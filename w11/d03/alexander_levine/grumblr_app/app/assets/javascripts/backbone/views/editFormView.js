// App.Views.EditGrumbleForm = Backbone.View.extend({
//   el: '.grumble',
//   initialize: function() {
//     this.template = HandlebarsTemplates['grumbles/editForm'];
//     this.render();
//   },
//
//   events: {
//     'click button.edit-confirm': 'edit'
//   },
//
//   render: function() {
//     this.$el.empty();
//     this.$el.html(this.template());
//   },
//
//   edit: function() {
//     var grumble = this.model();
//     grumble.set({
//       author: $('#grumble-form').find("input[name='author']").val(),
//       title: $('#grumble-form').find("input[name='title']").val(),
//       avatar: $('#grumble-form').find("input[name='avatar']").val(),
//       content: $('#grumble-form').find("input[name='content']").val(),
//     });
//     grumble.save();
//     App.Collections.grumbles.fetch({ reset: true });
//     this.$el.hide();
//     App.Routers.grumbles.navigate('');
//   }
//
//
//
// })
