  artist_data = {
      "tom_sachs" => {
        name: "Tom Sachs",
        photo_url: "http://www.huckmagazine.com/admin/wp-content/uploads/2013/03/tom-sachs.jpg",
        nationality: "USA",
        birthday: "7/26/1966"
      },

      "korehiko_hino" => {
        name: "Korehiko Hino",
        photo_url: "http://www.geocities.jp/kolehikohino/kao1.jpg",
        nationality: "Japan",
        birthday: "1/1/1976"
      },

      "richard_rauschenberg" => {
        name: "Richard Rauschenberg",
        photo_url: "http://www.greynotgrey.com/blog/wp-content/uploads/2013/04/rauschenberg-by-hopper.jpg",
        nationality: "USA",
        birthday: "10/22/1925"
      },
    }

  painting_data = {
      "tom_sachs"=>[{
        :img_url=>"http://tomsachs.vaesite.net/__data/0c7f6ed48333b48788e9682b1b04fbf0.jpg",
        :title=>"Barbie Slave Ship",
        :year_painted=>2013,
        :description=>"Barbie Slave Ship. The monumental new sculpture examines the links between slavery (control of the body) and advertising (control of the mind)."
      },
      {
        :img_url=>"http://tomsachs.vaesite.net/__data/b1c4082bd9ca63200420fe4ec6b3699c.jpg",
        :title=>"Chanel Chain Saw",
        :year_painted=>1996,
        :description=>"New York born artist Tom Sachs is something of a troublemaker on the art scene. Focused on critiquing fashion and street cultures, he manipulates our ideas of consumption, branding, commercial imagery and objects of money and power.  Tom Sachs addresses the mania around fashion, attempting to change viewer’s perceptions of precious items and revered brands.  His pieces have a very DIY quality, made from mundane materials: foam core, Sharpie markers, duct tape and hot glue."
      },
      {
        :img_url=>"http://tomsachs.vaesite.net/__data/253511bf7c7058ffa2570e6774cc053d.jpg",
        :title=>"LM Equipment Matrix",
        :year_painted=>2007,
        :description=>"pyrography"
      }],
      "korehiko_hino"=>[{
        :img_url=>"http://www.geocities.jp/kolehikohino/works-1/works-2/images-2/ANANOOKU.jpg",
        :title=>"Inner part of the Hole",
        :year_painted=>2013,
        :description=>"162 x 194cm | Oil on Canvas"
      },
      {
        :img_url=>"http://www.geocities.jp/kolehikohino/works-1/works-2/images-2/HANANOKABE.jpg",
        :title=>"flower WALL",
        :year_painted=>2009,
        :description=>"181.8 x 227.3cm | Oil on Canvas"
      },
      {
        :img_url=>"http://www.geocities.jp/kolehikohino/works-1/works-2/images-2/KAGAMIDEMITEIRU.jpg",
        :title=>"Looking with a Mirror",
        :year_painted=>2012,
        :description=>"162 x 97cm | Oil on Canvas"
      }],
      "richard_rauschenberg"=>[{
        :img_url=>"http://daily.greencine.com/skyway370.jpg",
        :title=>"Traveling '70 - '76",
        :year_painted=>1976,
        :description=>"Mixed Media Collage"
      },
      {
        :img_url=>"https://mhsartgallerymac.wikispaces.com/file/view/Robert-Rauschenberg-Untitled.jpg/346585362/660x497/Robert-Rauschenberg-Untitled.jpg",
        :title=>"Untitled",
        :year_painted=>1966,
        :description=>"Mixed Media Collage"
      },
      {
        :img_url=>"http://www.overthinkingit.com/wp-content/uploads/2008/05/goat.jpg",
        :title=>"Goat with Tire",
        :year_painted=>1959,
        :description=>"Goat, Tire, Wood, Paint",
      }],

  }


Painting.destroy_all
Artist.destroy_all

# painting_data = get_painting_data()
# artist_data = get_artist_data()

artist_data.each do |key, artist_hash|
  current_artist = Artist.create({
    name: artist_hash[:name],
    photo_url: artist_hash[:photo_url],
    nationality: artist_hash[:nationality],
    birthday: artist_hash[:birthday],
    })
  painting_data[key].each do |painting_hash|
    painting = Painting.create({
      img_url: painting_hash[:img_url],
      title: painting_hash[:title],
      year_painted: painting_hash[:year_painted],
      description: painting_hash[:description],
      artist_id: current_artist.id
      })
  end
end
