var GrumblesCollection = Backbone.Collection.extend({
  initialize: function(){
    console.log('New Grumbles Collection');
  },
  model: GrumbleModel,
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