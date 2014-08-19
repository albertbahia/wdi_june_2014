require 'buzzfeed_title_generator'

def students
  return %w(Albert    Alexander   Alexandra  Charlye    Christiana
            Elizabeth Eric        Fen        Francis
            Gadi      Hoa         Jon        Khadijah
            Liza        Michael    Najee     Patrick
            Peter     Ranjan      SeanJ      SeanT
          )
end

Post.destroy_all
Comment.destroy_all

authors = students + %w(Hari Adam McKenneth)
titles = Array.new(50) { BuzzfeedTitleGenerator.make_title }
posts = Array.new(50) { Faker::Lorem.paragraphs([3,4,5].sample).join("\n") }
sentences = Array.new(50) { Faker::Lorem.paragraph([3,4,5].sample)}

50.times do
  current_post = Post.create!(author_name: authors.sample, title: titles.sample, content: posts.sample)
  rand(3..50).times do
    current_post.comments.create!(author_name: authors.sample, content: sentences.sample)
  end
end
