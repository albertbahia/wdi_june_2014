var GrumbleModel = Backbone.Model.extend({ initialize: function() {
  console.log('grumble model loaded')
},
  urlRoot: '/grumbles' 
}); 