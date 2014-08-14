require 'buzzfeed_title_generator'

authors = %w(Hari Adam McKenneth Albert Alexander Alexandra Charlye
            Christiana Elizabeth Eric Fen Francis Gadi Hoa Jon
            Khadijah  Liza Michael Najee Patrick Peter Ranjan Sarit
            SeanJ SeanT
          )


Hoot.destroy_all
100.times do
  Hoot.create!(author: authors.sample, content: BuzzfeedTitleGenerator.make_title)
end
