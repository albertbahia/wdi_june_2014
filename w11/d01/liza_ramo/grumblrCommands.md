MD for Grumblr

1- Create a new grumble (call it 'grumble1') with no attributes set.

var grumblr1 = new GrumblrModel({ id: 1 });

2- Set that grumbles attributes in one line.

grumblr1.set({author: "Liza", content: "Hello", title: "hello", image: "https://media.licdn.com/mpr/mpr/shrink_200_200/p/4/000/153/268/1956cce.jpg", avatar: "https://media.licdn.com/mpr/mpr/shrink_200_200/p/4/000/153/268/1956cce.jpg" })

3- Save grumble1.

grumblr1.save();

4- Delete grumble1.

grumblr1.destroy()

5- Create grumble2, this time setting the attributes when you create it.

var grumblr2 = new GrumblrModel({author: "Liza", content: "Hello", title: "hello", image: "https://media.licdn.com/mpr/mpr/shrink_200_200/p/4/000/153/268/1956cce.jpg", avatar: "https://media.licdn.com/mpr/mpr/shrink_200_200/p/4/000/153/268/1956cce.jpg" })

6- Modify grumble2's title and content, and save it (2 lines).

grumblr2.set({ title: "OOOOO", content: "HEY" })
grumblr2.save()

7- Create a new gumble collection, and call it allGrumbles.

var allGrumblrs = new GrumblrsCollection();

8- Fill the allGrumbles collection with the data from the server.

allGrumblrs.fetch();

9- Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.

var myFavGrumblr = allGrumblrs.last()

10- Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.

myFavGrumblr.destroy(); 

11- Add a brand new grumble to the collection in one line. Make sure to set its properties.

var grumblr3 = new GrumblrModel({author: "Liz", content: "Weeee", title: "Hey", image: "https://media.licdn.com/mpr/mpr/shrink_200_200/p/4/000/153/268/1956cce.jpg", avatar: "https://media.licdn.com/mpr/mpr/shrink_200_200/p/4/000/153/268/1956cce.jpg" })

allGrumblrCollection.last()

12- Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.

Backbone.sync('create', allGrumblrs)