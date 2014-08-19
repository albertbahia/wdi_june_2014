// 1. Create a new grumble (call it 'grumble1') with no attributes set.
var grumble1 = new GrumblrModel()

// 2. Set that grumbles attributes in one line.
grumble1.set({author:'Samuel L. Jackson', content: "Look, just because I dont be givin no man a foot massage dont make it right for Marsellus to throw Antwone", title: 'What Motherfucker', image: 'http://2.bp.blogspot.com/-bMSMPdUtHgE/TgdJv97jkJI/AAAAAAAADho/6h69LkD1aPM/s640/samuel.jpg',avatar: 'http://s3.amazonaws.com/img.goldderby.com/ck/images/Samuel%20L_%20Jackson%20Playbill%20Headshot.JPG' });

// 3. Save grumble1.
grumble1.save();

// 4. Delete grumble1.
grumble1.clear();

// 5. Create grumble2, this time setting the attributes when you create it.
var grumble2 = new GrumblrModel({author:'Samuel L. Jackson', content: "Look, just because I dont be givin no man a foot massage dont make it right for Marsellus to throw Antwone", title: 'What Motherfucker', image: 'http://2.bp.blogspot.com/-bMSMPdUtHgE/TgdJv97jkJI/AAAAAAAADho/6h69LkD1aPM/s640/samuel.jpg',avatar: 'http://s3.amazonaws.com/img.goldderby.com/ck/images/Samuel%20L_%20Jackson%20Playbill%20Headshot.JPG' });

// 6. Modify grumble2's title and content, and save it (2 lines).
grumble2.set({title: 'Amazing Blog Post MotherFu...'});
grumble2.set({content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mi diam, porttitor id volutpat ac, pretium quis turpis. Proin facilisis ornare odio, eget aliquam purus dapibus vitae. In sit amet viverra felis.'});

// 7. Create a new gumble collection, and call it allGrumbles.
var allGrumbles = new GrumblrsCollection();

// 8. Fill the allGrumbles collection with the data from the server.
allGrumbles.fetch();

// 9. Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
var myFavGrumble = allGrumbles.get(18);

// 10. Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
allGrumbles.remove('c15')
myFavGrumble.destroy();

// 11. Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumbles.create({author:'Samuel L. Jackson', content: "Look, just because I dont be givin no man a foot massage dont make it right for Marsellus to throw Antwone", title: 'What Motherfucker', image: 'http://2.bp.blogspot.com/-bMSMPdUtHgE/TgdJv97jkJI/AAAAAAAADho/6h69LkD1aPM/s640/samuel.jpg',avatar: 'http://s3.amazonaws.com/img.goldderby.com/ck/images/Samuel%20L_%20Jackson%20Playbill%20Headshot.JPG' });

// 12. Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
Backbone.sync('update', allGrumbles)