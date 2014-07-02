def get_artist_data
  artist_data = {
      "tom_sachs" => {
        name: "Tom Sachs",
        photo_url: "http://www.huckmagazine.com/admin/wp-content/uploads/2013/03/tom-sachs.jpg",
        nationality: "USA",
        birthday: "7/26/1966"
      },

      "richard_avedon" => {
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
  return artist_data
end
