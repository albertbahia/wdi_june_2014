grumble1 = new GrumbleModel({})

grumble1.set({  author:'nate dawg', content:'up in here', image:'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRnuPuwoQJV5W45qY31C4u1fc_dAsT2vX62SNxJeEVRXeQtNvWoug', avatar:'http://90s-altrock.com/images/up_in_it.jpg'})

grumble1.save()

grumble1.destroy()

grumble2 = new GrumbleModel({ author: 't-bone', content: 'down with it', image: 'up.jpg', avatar: 'tbiz.gif' })

grumble2.set({ author: 'Yeezus', content: 'I am a gawd' })
grumble2.save()

allGrumbles = new GrumblesCollection();

allGrumbles.fetch();

myFavGrumble = allGrumbles.get('c3')

allGrumbles.remove(myFavGrumble)

allGrumbles.add({ author: 'Ralph', content: 'Burning Chrome', image: 'burnz.jpg', avatar: 'ralphy.jpg' })
