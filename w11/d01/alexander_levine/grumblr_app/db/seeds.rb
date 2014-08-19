Grumble.destroy_all

authors = ["alex", "najee", "adam", "hari", "mckenneth", "pete", "charlye",
           "albert", "kadijah", "sean t", "fen", "jon", "sean j", "francis",
           "gadi", "eric", "hoa", "alexandra", "liz", "liza"]

content = ["I love backbone", "What is backbone?" "What is everyone doing for project 3",
           "I need help with this homework!", "Who's ready for football?", "Kaplah!",
           "Excited for Ranjan's dad's restaurant!"]

title = ["food for thought", "gotta love this", "must read", "huh?", "my feelings",
         "here's why i code"]

image = ["http://placebear.com/200/300", "http://placekitten.com/200/300"]


avatar = ["http://placesheen.com/200/300", "http://fillmurray.com/200/300"]


authors.each do |author|
  Grumble.create({author: authors.sample,
                  content: content.sample,
                  title: title.sample,
                  image: image.sample,
                  avatar: avatar.sample})
end
