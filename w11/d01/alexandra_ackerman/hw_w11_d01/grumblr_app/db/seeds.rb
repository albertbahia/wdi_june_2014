Grumble.destroy_all

authors = [
  'Grumpy Cat', 
  'Lil Bub', 
  'Felix', 
  'Tom', 
  'Sylvester', 
  'Maru', 
  'Pudge', 
  'Nala', 
  'Hamilton the Hipster Cat', 
  'Skifcha', 'Snoopy Cat', 
  'Henri, the Existential Cat', 
  'Smoosh', 
  'Sam, the Cat with Eyebrows', 
  'Shironeko', 
  'Colonel Meow', 
  'Sockington', 
  'Meowth']

titles = [
  'Not Impressed',
  'Judging You',
  'Everything Sucks',
  'Yawn',
  'Silly Human',
  'Can I Haz GLOBALDISTRUCTION',
  'NO',
  'I Didnt Even Have Fun Once',
  'Boo.'
]

content = ["Attack feet. Kick up litter throwup on your pillow, for shake treat bag bathe private parts with tongue then lick owner's face for chew foot, for intently stare at the same spot scamper. Climb leg intently stare at the same spot, or sun bathe destroy couch, or behind the couch, but always hungry intently stare at the same spot. Leave dead animals as gifts destroy couch find empty spot in cupboard and sleep all day yet hate dog use lap as chair. Run in circles hunt by meowing loudly at 5am next to human slave food dispenser hopped up on catnip, yet destroy couch, for nap all day. Run in circles. Sleep on keyboard intently sniff hand, and play time, eat grass, throw it back up yet who's the baby, yet shake treat bag, chew foot. Throwup on your pillow eat grass, throw it back up but destroy couch flop over hate dog. Have secret plans hide when guests come over stare at ceiling, but eat grass, throw it back up yet destroy couch. Claw drapes. Burrow under covers sleep nap purr for no reason. "]

images = [
  "http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/8/7/10/enhanced-buzz-25813-1375885241-14.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr05/2013/8/7/11/enhanced-buzz-15017-1375889565-8.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr05/2013/8/7/11/enhanced-buzz-15484-1375890043-12.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr01/2013/8/7/12/enhanced-buzz-11546-1375894039-14.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/8/7/12/enhanced-buzz-15588-1375894490-20.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/8/7/12/enhanced-buzz-23242-1375892794-8.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr02/2013/8/7/11/enhanced-buzz-29144-1375890299-1.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr02/2013/8/7/11/enhanced-buzz-27989-1375890767-5.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr05/2013/8/7/11/enhanced-buzz-27644-1375891118-0.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/8/7/13/enhanced-buzz-16302-1375895503-33.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/8/7/12/enhanced-buzz-17836-1375894717-18.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/8/7/12/enhanced-buzz-16291-1375892631-11.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr05/2013/8/7/12/enhanced-buzz-27839-1375891722-2.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr01/2013/8/7/12/enhanced-buzz-15672-1375892207-0.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr05/2013/8/7/13/enhanced-buzz-2340-1375896383-31.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/8/7/13/enhanced-buzz-24049-1375896561-20.jpg",
  "http://s3-ec.buzzfed.com/static/enhanced/webdr03/2013/8/7/13/enhanced-buzz-24136-1375896694-14.jpg"
]

avatars = [
 "http://placekitten.com/400/400"   
]

authors.each do |author|
  Grumble.create(
    author: author,
    title: titles.sample,
    content: content.sample,
    image: images.sample,
    avatar: avatars.sample
    )  
end 