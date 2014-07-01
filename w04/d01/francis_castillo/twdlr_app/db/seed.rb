require 'active_record'

ActiveRecord::Base.establish_connection ({
  database: 'twdlr_app_development',
  adapter: 'postgresql'
  })
tweeds = [
  {author: "Sam", content: "I love twdler", image_url: "http://lorempixel.com/output/transport-h-c-200-400-7.jpg"},
  {author: "Rico", content: "I like twdler", image_url: "http://lorempixel.com/output/transport-h-c-200-400-6.jpg"},
  {author: "Jeff", content: "WTF twdler", image_url: "http://lorempixel.com/output/transport-h-c-200-400-8.jpg"},
  {author: "Fran", content: "OK twdler", image_url: "http://lorempixel.com/output/transport-h-c-200-400-9.jpg"},
  {author: "les", content: "rails is great", image_url: "http://lorempixel.com/output/transport-h-c-200-400-10.jpg"},
  {author: "rich", content: "um!"},
  {author: "juji", content: "the bestest", image_url: "http://lorempixel.com/output/transport-h-c-200-400-4.jpg"},
  {author: "Frank", content: "AOK", image_url: "http://lorempixel.com/output/transport-h-c-200-400-3.jpg"},
  {author: "an", content: "oh boy", image_url: "http://lorempixel.com/output/transport-h-c-200-400-5.jpg"},
  {author: "Jake", content: "all of the above"}
  ]

def seed(arr)

i = arr.length
  while i < arr.length do
    arr.each { |twd|
      Tweed.create(twd).permit(:author, :content)
      i+=1
    }
  end
end

seed(tweeds)
