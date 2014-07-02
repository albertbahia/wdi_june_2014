def get_artist_data
  artist_data = {
    "davinci" => {
              name: "Leonardo da Vinci",
              photo_url: "http://a5.files.biography.com/image/upload/c_fill,g_face,h_300,q_80,w_300/MTIwNjA4NjMzNTM4NTEyMzk2.jpg",
              nationality: "Italy",
              birthday: "1452-04-15"
            },
    "vangogh" => {
              name: "Vincent van Gogh",
              photo_url: "http://static.guim.co.uk/sys-images/Books/Pix/pictures/2009/12/4/1259924425302/Self-Portrait-1889-by-Vin-001.jpg",
              nationality: "Netherlands",
              birthday: "1853-03-30"
            },
    "picasso" => {
              name: "Pablo Picasso",
              photo_url: "http://www.palm-reading.org/images/pablo-picasso.jpg",
              nationality: "Spain",
              birthday: "1881-10-25"
            },

  }
  return artist_data
end
