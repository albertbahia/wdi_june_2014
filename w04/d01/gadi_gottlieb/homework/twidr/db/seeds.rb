Tweed.destroy_all

tweed_data = {
  "Jon Doe" => {
    :author=>"jonny67",
    :content=>"Whazzzzzap! #late90s",
    :image=> "http://img2.wikia.nocookie.net/__cb20130331003711/whatever-you-want/images/e/e3/3_scary_movie_quotes_wazzup.jpg"
  },
  "Tim Meadows" => {
    :author=> "timmy47",
    :content=> "Boo-YAAA! #espn#snlskit#rayramano",
    :image=> "http://l.yimg.com/a/i/us/sch/cn/v/v1/w1006/692293_400_300.jpeg"
    },
  "Gadi Gottlieb" => {
    :author=> "tripg44",
    :content=> "LETS GO METS! #2015",
    :image=> "http://metsmerizedonline.com/wp-content/uploads/2012/05/Lets-Go-Mets-300x196.jpg?c4e8ae"
  },
  "Ray Ramano" => {
    :author=> "everybodylovesme",
    :content=> "Sweet Sassy Molassy! #rayramano",
    :image=> "http://snl.jt.org/caps/episode_sketches/1999-03-13-3.jpg"
  },
  "Alex Rodriguez" => {
    :author=> "aroids13",
    :content=> "YANKEES SUCK!!! #didntuseroids",
    :image=> "http://i346.photobucket.com/albums/p436/NnamdiAsomugha21/Athletics%20Nation/YankeesSuck.jpg"
  },
  "George Washington" => {
    :author=> "dollarbills",
    :content=> "Happy July 4th Day! #declarationofindependance!",
    :image=> "http://www.happyholidays2014.com/wp-content/uploads/2014/06/graphics-for-fouth-july-.gif"
  },
  "Austin Powers" => {
    :author=> "dangerpowers69",
    :content=> "Yeaaah Baby!! #austin#danger#powers",
    :image=> "http://reisman.lohudblogs.com/files/2009/08/austinpowers_original.jpg"
  },
  "Jerry Seinfeld" => {
    :author => "seinsmell",
    :content => "HELLLLLLLLOOOOOOO! #seinfeld#stomachgreetings",
    :image => "http://www.jeffgoebel.com/wp-content/uploads/2013/03/hello.jpg"
  },
  "Billy Bob" => {
    :author => "bbthorton",
    :content => "What movie to see this weekend? #summermovieshasbegun",
    :image => "http://www.pbsplastering.com/images/gallery/6b.jpg"
  },
  "Borat Sagdiyev" => {
    :author => "kazakreporter",
    :content => "King of the Castle! #borat",
    :image => "http://4.bp.blogspot.com/-8dJsOTAks3w/ULPRXDXFYDI/AAAAAAAAAGo/Wxvjw3xuP-M/s1600/king+in+the+castle.jpg"
  }
}
tweed_data.each do |author_key, tweed|
  Tweed.create!({
    author: tweed[:author],
    content: tweed[:content],
    image_url: tweed[:image]
    })
end
