# Tun.r Exercise

## We Do

As a class we will:

1. Create the project structure
  * `tunr_songs_playlists`
    * `lib`
      * `song.rb`
      * `playlist.rb`
    * `db`
      * `schema.sql`
    * `playground.rb`
2. Create the schema.sql for this problem:
  * **songs** - id, name
  * **playlists** - id, name
  * **playlists_songs** - playlist_id, song_id
3. Create the ActiveRecord class files: `lib/song.rb`, `lib/playlist.rb`
4. Create the playground file (require statements, connect to db, active pry)


## You Do

1. Create five songs.
  trouble = Song.create({ name: "I Knew You Were Trouble"})
  love_story = Song.create({ name: "Love Story"})
  mine = Song.create({ name: "Mine"})
  mean = Song.create({ name: "Mean"})
  red = Song.create({ name: "Red"})

  roar = Song.create({ name: "Roar"})
  teenage_dream = Song.create({ name: "Teenage Dream"})
  firework = Song.create({ name: "Firework"})
  kissed_girl = Song.create({ name: "I Kissed a Girl"})

2. Create 2 playlists.
  taylor_swift = Playlist.create({name: "Taylor Swift"})
  katy_perry = Playlist.create({name: "Katy Perry"})

3. Add at least 4 songs to your first playlist.
  taylor_swift.songs = [trouble, love_story, mine, mean, red]

  -or-

  Playlist.find(1)

  -or-

  Playlist.all.order(:id).first

  ^ You can set the playlist to a variable here if you hadn't before:
  list_1 = Playlist.all.order(:id).first

  *To find in descending order
  Playlist.all.(id: :desc)


4. Add 3 songs to your second playlist in one line.
  katy_perry.songs = [roar, teenage_dream, firework]

5. Add 1 more song to your second playlist.
  katy_perry.songs << kissed_girl

6. Find two songs by id. Call them song1 and song2.
  song1 = Song.find(1)
  song2 = Song.find(2)

7. For each song, list all playlists that song belongs to.
  puts("playlists for #{trouble.name}")
    trouble.playlists.each do |playlist|
    puts playlist.name
  end

  #Repeat for each song

  puts("Playlists for #{love_story.name}")
    list_of_playlists_names = love_story.playlists.map do |playlist|
    playlist.name
  end

  ^ list_of_playlists_names variable will capture
    the array produced by love_story.playlists.map do |playlist| playlist.name
    That array will map over all the playlists that love_story belongs to and return
    an array of the names of those playlists


8. In one line, set your first playlist to have the same songs as the second
   playlist

     taylor_swift.songs = katy_perry.songs

9. Clear your first playlist so it has no songs.

    taylor_swift.songs = [ ] s 
