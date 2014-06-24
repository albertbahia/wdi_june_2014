require 'active_record'
require 'pry'
require_relative 'lib/song'
require_relative 'lib/playlist'

ActiveRecord::Base.establish_connection({
    database: 'tunr_db',
    adapter: 'postgresql'
})

trouble = Song.create({ name: "I Knew You Were Trouble"})
love_story = Song.create({ name: "Love Story"})
mine = Song.create({ name: "Mine"})
mean = Song.create({ name: "Mean"})
red = Song.create({ name: "Red"})

roar = Song.create({ name: "Roar"})
teenage_dream = Song.create({ name: "Teenage Dream"})
firework = Song.create({ name: "Firework"})
kissed_girl = Song.create({ name: "I Kissed a Girl"})


taylor_swift = Playlist.create({name: "Taylor Swift"})
katy_perry = Playlist.create({name: "Katy Perry"})


taylor_swift.songs = [trouble, love_story, mine, mean, red]
katy_perry.songs = [roar, teenage_dream, firework]

katy_perry.songs << kissed_girl << 






binding.pry
