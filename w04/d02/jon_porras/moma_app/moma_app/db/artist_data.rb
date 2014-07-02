def get_artist_data
  artist_data = {
    "josephalbers" => {
      name: "Joseph Albers",
      nationality: "USA",
      birthday: "March 19th 1988",
      photo_url: "http://upload.wikimedia.org/wikipedia/en/9/9e/Josef_Albers.jpg"
    },
    "agnesmartin" => {
      name: "Agnes Martin",
      nationality: "USA",
      birthday: "March 22nd 1912",
      photo_url: "http://taos.org/html-assets/image/AgnesMartin_MT%20400px.jpg"
    },
    "renemagritte" => {
      name: "Rene Magritte",
      nationality: "Belium",
      birthday: "November 21st 1988",
      photo_url: "http://upload.wikimedia.org/wikipedia/en/9/92/Wolleh_magritte.jpg"
    }
  }
  return artist_data
end
