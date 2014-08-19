Create a new grumble (call it 'grumble1') with no attributes set.
- var grumble1 =  new Grumble

Set that grumbles attributes in one line.
- grumble1.set({author: "Billy Jean", content: "Is not my lover", title: "Jamz", image: "http://www.placekitten.com/200/200", avatar: "http://www.placekitten.com/200/200"})

Save grumble1.
- grumble1.save()

Delete grumble1.
- grumble1.destroy()

Create grumble2, this time setting the attributes when you create it.
- grumble2 = new Grumble({author: "Jesse Jackson", content: "my my my...", title: "BS", image: "http://www.placekitten.com/100/100", avatar: "http://www.placesheen.com/100/100"})

Modify grumble2's title and content, and save it (2 lines).
- grumble2.set({title: "More BS"})
- grumble2.set({content: "yea, yea, yea"})
- grumble2.save()

Create a new gumble collection, and call it allGrumbles.
- var allGrumbles = new GrumbleCollection

Fill the allGrumbles collection with the data from the server.
- allGrumbles.fetch()

Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
- var myFavGrumble = allGrumbles.get(2)

Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
- myFavGrumble.destroy()

Add a brand new grumble to the collection in one line. Make sure to set its properties.
- allGrumbles.add([
  {author: "Y.O"},
  {content: "Yoooooooooooooooooooooo"},
  {title: "Yo"},
  {image: ""http://www.placekitten.com/200/200""},
  {avatar: "http://www.placekitten.com/200/200"}
]);
Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
