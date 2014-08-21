App.Routers.Grumbles = Backbone.Router.extend({

  routes:{
    "": "index",
    "grumbles/new": "new",
    "grumbles/:id/edit": "edit"
  },

  index: function(){
    App.Collections.grumbles.fetch({reset: true});
  },

  new: function(){
    App.Views.grumbleForm.render();
    $('#new-grumble-link').hide();
  },

  edit: function(grumbleID){
     var form = HandlebarsTemplates["grumbles/newGrumble"];
        var grumbles = App.Collections.grumbles;
        grumbles.fetch({
          success: function(){
            var thisgrumble = grumbles.where({id: parseInt(grumbleID)})[0];
            var formContainer = $('#' + thisgrumble.id);
            formContainer.append(form(thisgrumble.toJSON()));
          }
        });
      }
});