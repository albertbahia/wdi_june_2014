//Create a new grumble (call it 'grumble1') with no attributes set.
var grumble1 = new GrumbleModel

//Set that grumbles attributes in one line.
grumble1.set({author: 'Jon', content: 'some stuffs', title:'my Grumble', image:'imgfileurl.com', avatar:'anotherimagefileurl.come'})

//Save grumble1.
grumble1.save()

//Delete grumble1.
grumble1.destroy()

//Create grumble2, this time setting the attributes when you create it.
var grumble2 = new GrumbleModel({author: 'Jon', content: 'some stuffs', title:'my Grumble', image:'imgfileurl.com', avatar:'anotherimagefileurl.come'})

//Modify grumble2's title and content, and save it (2 lines).
grumble2.set({title: 'new title', content: 'new content'})
grumble2.set({title: 'new title', content: 'new content'})

//Create a new gumble collection, and call it allGrumbles.
var allGrumbles = new GrumblesCollection();

//Fill the allGrumbles collection with the data from the server.
allGrumbles.fetch();

//Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
var myFavGrumble = allGrumbles.get(2);

//Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
allGrumbles.remove(myFavGrumble);

//Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumbles.model = GrumbleModel
allGrumbles.add({author: 'Jon', content: 'some stuffs', title:'my Grumble', image:'imgfileurl.com', avatar:'anotherimagefileurl.come'})

//Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
Backbone.sync('update', allGrumbles)
