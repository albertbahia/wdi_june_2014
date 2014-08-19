//Create a new grumble (call it 'grumble1') with no attributes set.
var grumblr1 = new GrumblrModel;

//Set that grumbles attributes in one line.
Grumblr.set({
  author: 'Ryan OReilly',
  content: 'Bresaola salami chuck doner pastrami tail biltong pork kevin rump shoulder ground round.',
  title: 'Sharpest Cell Shiv',
  image: 'http://www.cosmodromemag.com/files/oz.jpg',
  avatar: 'http://cdn.gunaxin.com/wp-content/uploads/2010/10/copyof484621um6.jpg' });

//Save grumble1.
grumblr1.save();

//Delete grumble1.
grumblr1.clear();

//Create grumble2, this time setting the attributes when you create it.
var grumblr2 = new GrumblrModel({author: 'Ryan OReilly', content: 'Bresaola salami chuck doner pastrami tail biltong pork kevin rump shoulder ground round.', title: 'Sharpest Cell Shiv', image: 'http://www.cosmodromemag.com/files/oz.jpg', avatar: 'http://cdn.gunaxin.com/wp-content/uploads/2010/10/copyof484621um6.jpg'});

//Modify grumble2's title and content, and save it (2 lines).
grumblr2.set({title: 'My Favorite Latrine Duty'});

grumblr2.set({content: 'Oswald Penitentiary Gabagool'});

//Create a new gumble collection, and call it allGrumbles.
var allGrumblrs = new GrumblrsCollection();

//Fill the allGrumbles collection with the data from the server.
allGrumblrs.fetch();

//Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
myFavGrumblr = allGrumblrs.fetch(id=1);

//Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
allGrumblrs.remove('c3');

//Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumblrs.create({author: 'Ryan OReilly', content: 'Bresaola salami chuck doner pastrami tail biltong pork kevin rump shoulder ground round.', title: 'Sharpest Cell Shiv', image: 'http://www.cosmodromemag.com/files/oz.jpg', avatar: 'http://cdn.gunaxin.com/wp-content/uploads/2010/10/copyof484621um6.jpg'});


//Sync a collection
