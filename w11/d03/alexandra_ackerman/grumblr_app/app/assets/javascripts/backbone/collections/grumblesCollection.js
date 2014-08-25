App.Collections.Grumbles = Backbone.Collection.extend({
  initialize: function(){
    console.log('New Grumbles Collection');
  },
  model: App.Models.Grumble,
  url: '/grumbles',

  save: function(){
    Backbone.sync('create',this, {
      success: function(){
        console.log('Collection addition saved!');
      }
    });
  },

  delete: function(){
    Backbone.sync('destroy', this, {
      success: function(){
        console.log('Collection deletion saved!');
      }
    });
  }
  
});