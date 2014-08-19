//1.  Create a new grumble (call it 'grumble1') with no attributes set.
  var grumble1 = new GrumbleModel();

//2.  Set that grumbles attributes in one line.
  grumble1.set({
    author: "Austin Powers",
    content: "Yeah Baaaaaaaaby!! Going back to the 60s to get my mojo. Dr. Evil is going to get his buttkicked!",
    title: "Lost Mojo",
    image: "http://stephaniecirihal.com/wp-content/uploads/2013/09/mojo-austin-powers.jpeg",
    avatar: "http://www.smartmeetings.com/meeting-and-event-planning-news/wp-content/uploads/2011/10/austinpowers.jpg"
  })

//3.  Save grumble1.
  grumble1.save()

//4.  Delete grumble1.
  grumble1.destroy()

//5.  Create grumble2, this time setting the attributes when you create it.
  var grumble2 = new GrumbleModel({
    author: "Austin Powers",
    content: "Yeah Baaaaaaaaby!! Going back to the 60s to get my mojo. Dr. Evil is going to get his buttkicked!",
    title: "Lost Mojo",
    image: "http://stephaniecirihal.com/wp-content/uploads/2013/09/mojo-austin-powers.jpeg",
    avatar: "http://www.smartmeetings.com/meeting-and-event-planning-news/wp-content/uploads/2011/10/austinpowers.jpg"
  })

//6.  Modify grumble2's title and content, and save it (2 lines).
  grumble2.set({content: "Craaaaaaanky! I've lost my mojo! Who stole my mojo!!!!!!!!", title: "Missing Mojo"})
  grumble2.save()

//7.  Create a new gumble collection, and call it allGrumbles.
  var allGrumbles = new GrumblesCollection();

//8.  Fill the allGrumbles collection with the data from the server.
  allGrumbles.fetch()

//9.  Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
  myFavGrumble = allGrumbles.get(3)

//10. Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
  allGrumbles.remove(myFavGrumble)

//11. Add a brand new grumble to the collection in one line. Make sure to set its properties.
  allGrumbles.add({
    author: "Walter White",
    content: "Cooking meth to save my family or because I love power? That's the question.",
    title: "Breaking Bad",
    image: "placekitten.com/400/400",
    avatar: "placekitten.com/300/300"
  })

//12. Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
  allGrumbles.sync('update', allGrumbles);
