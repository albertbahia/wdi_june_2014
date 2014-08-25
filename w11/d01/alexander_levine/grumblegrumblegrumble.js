var grumble1 = new GrumbleModel();
grumble1.set({author: "alex", content: "i love ice cream", title: "ode to ice cream",
              image: "http://placebear.com/200/300", avatar: "http://fillmurray.com/200/300"});
grumble1.save();
grumble1.destroy();
var grumble2 = new GrumbleModel({author: "alex", content: "i love ice cream", title: "ode to ice cream",
                                 image: "http://placebear.com/200/300", avatar: "http://fillmurray.com/200/300"});
grumble2.set({content: "i hate ice cream!", title: "ice cream rant"});
grumble2.save();
var allGrumbles = new GrumblesCollection();
allGrumbles.fetch();
var myFavGrumble = allGrumbles.get(2);
allGrumbles.remove(myFavGrumble);
allGrumbles.create({author: "alex", content: "i love ice cream", title: "ode to ice cream",
                    image: "http://placebear.com/200/300", avatar: "http://fillmurray.com/200/300"});

// In answer to number 12, not quite sure what sync is doing.
// Something like Backbone.sync('destroy', allGrumbles);
