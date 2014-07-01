# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tweed_data = [

  {
    :author => "Sean",
    :content => "Today, my nephew turned a year old",
    :image_url => "http://www.thepartyworks.com/ip/images19/190683/71195.jpg"
  },

  {
    :author => "Sean",
    :content => "Great, the Bulls beat the Knicks tonight!",
    :image_url => "http://www.highlighthub.com/wp-content/uploads/2014/06/chicago-bulls-2.jpg"
  },

  {
    :author => "Sean",
    :content => "Reading is fundamental",
    :image_url => "http://bossierpress.com/wp-content/uploads/2013/10/Open-Book.jpg"
  },

  {
    :author => "Sean",
    :content => "Keep reading",
    :image_url => "http://www.exacttarget.com/blog/wp-content/uploads/2014/06/books_w1024.jpeg"
  },

  {
    :author => "Sean",
    :content => "had some vegan food tonight",
    :image_url => "http://littlegrazers.com/wp-content/uploads/2012/05/DSC_0314.jpg"
  },

  {
    :author => "Sean",
    :content => "had some vegan food tonight",
    :image_url => "http://littlegrazers.com/wp-content/uploads/2012/05/DSC_0314.jpg"
  },

  {
    :author => "Sean",
    :content => "The best place on earth",
    :image_url => "http://cdn.theanimals.pics/pictures/img.gawkerassets.com/img/187mwrclo8simjpg/original.jpg"
  },

  {
    :author => "Sean",
    :content => "the second best place on earth",
    :image_url => "http://cdn.cstatic.net/images/gridfs/4f67844c85216d0957070667/l1a439a43-m13o.jpg"
  },

  {
    :author => "Sean",
    :content => "architecture is beautiful",
    :image_url => "http://www.viahouse.com/wp-content/uploads/2011/02/Solid-Architecture-of-Haus-Bold-in-Germany.jpg"
  },

  {
    :author => "Sean",
    :content => "pizza, pizza, pizza",
    :image_url => "http://lighthouse-deli.com/wp-content/uploads/2014/02/pizza-15.jpg"
  }
]


  tweed_data.each do |tweed_hash|

        Tweed.create({
          :name => tweed_hash[:author],
          :content => tweed_hash[:content],
          :image_url => tweed_hash[:image_url]
        })

  end
