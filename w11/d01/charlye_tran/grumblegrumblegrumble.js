// Create a new grumble (call it 'grumble1') with no attributes set.
var grumble = new GrumbleModel;
// Set that grumbles attributes in one line.
grumble.set({author: 'charlye', title: 'how to eat fast', content: 'chew really, really fatst'})
// Save grumble1.
grumble.save();
// Delete grumble1.
grumble.destroy();
// Create grumble2, this time setting the attributes when you create it.
var grumble2 = new GrumbleModel({author: 'wonderwoman', title: 'how to kick ass', content: 'kick fast'});
// Modify grumble2's title and content, and save it (2 lines).
grumble2.set({title: 'Kick HIGHHHHH', content: 'get a coach'});
grumble2.save();
// Create a new gumble collection, and call it allGrumbles.
var allGrumbles = new GrumblesCollection;
// Fill the allGrumbles collection with the data from the server.
allGrumbles.fetch();
// Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
var myFav = allGrumbles.models[1];
// Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
myFav.destroy();
// Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumbles.create({author: 'sam', title: 'best buds with frodo', content: 'traveling with my best bud rocks'});
// Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
save: function(){
    this.models.forEach(function(grumble){
      grumble.save();
    });
  }
