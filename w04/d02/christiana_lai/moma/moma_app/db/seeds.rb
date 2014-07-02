Artist.destroy_all
Painting.destroy_all

artist_data = {
  "Pierre-Auguste Renoir" => {
    name: "Pierre-Auguste Renoir",
    photo_url: "http://upload.wikimedia.org/wikipedia/commons/6/67/Pierre_Auguste_Renoir%2C_uncropped_image.jpg",
    nationality: "French",
    birthday: "February 25, 1841"
  },

  "Mary Cassatt" => {
    name: "Mary Cassatt",
    photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Mary_Cassatt_-_Portrait_of_the_Artist_-_MMA_1975.319.1.jpg/440px-Mary_Cassatt_-_Portrait_of_the_Artist_-_MMA_1975.319.1.jpg",
    nationality: "American",
    birthday: "May 22, 1844"
  },

  "Edvard Munch" => {
    name: "Edvard Munch",
    photo_url: "http://upload.wikimedia.org/wikipedia/commons/6/67/Edvard_Munch_1921.jpg",
    nationality: "Norwegian",
    birthday: "December 12, 1863"
  }
}

painting_data = {
  "Pierre-Auguste Renoir" => [
    {:img_url=> "http://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Pierre-Auguste_Renoir_023.jpg/440px-Pierre-Auguste_Renoir_023.jpg",
    :title=> "The Theater Box",
    :year_painted=> "1874",
    :description=> "Courtauld Institute Galleries, London"},

    {:img_url=> "http://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Auguste_Renoir_-_The_Swing_-_Google_Art_Project.jpg/440px-Auguste_Renoir_-_The_Swing_-_Google_Art_Project.jpg",
    :title=> "La Balançoire",
    :year_painted=> "1876",
    :description=> "Oil on canvas, Musée d'Orsay, Paris"},

    {:img_url=> "http://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Auguste_Renoir_-_Young_Girls_at_the_Piano_-_Google_Art_Project.jpg/440px-Auguste_Renoir_-_Young_Girls_at_the_Piano_-_Google_Art_Project.jpg",
    :title=> "Girls at the Piano",
    :year_painted=> "1892",
    :description=> "Musée d'Orsay, Paris"}],


  "Mary Cassatt" => [
    {:img_url=> "http://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Mary_Cassatt_-_The_Boating_Party_-_Google_Art_Project.jpg/550px-Mary_Cassatt_-_The_Boating_Party_-_Google_Art_Project.jpg",
    :title=> "The Boating Party",
    :year_painted=> "1893",
    :description=> "Oil on canvas, National Gallery of Art, Washington"},

    {:img_url=> "http://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Mary_Cassatt_-_The_Tea_-_MFA_Boston_42.178.jpg/600px-Mary_Cassatt_-_The_Tea_-_MFA_Boston_42.178.jpg",
    :title=> "Tea",
    :year_painted=> "1880",
    :description=> "Oil on canvas, museum of Fine Arts, Boston"},

    {:img_url=> "http://upload.wikimedia.org/wikipedia/commons/6/6a/Mary_Cassatt%2C_Reading_%E2%80%9CLe_Figaro%E2%80%9D%2C_1878%2C_Collection_Mrs._Eric_de_Spoelberch%2C_Haverford%2C_Pennsylvania.jpg",
    :title=> "Reading 'Le Figaro'",
    :year_painted=> "1878",
    :description=> "Collection Mrs. Eric de Spoelberch, Haverford, Pennsylvania"}],


  "Edvard Munch" => [
    {:img_url=> "http://upload.wikimedia.org/wikipedia/en/c/c6/TheSickChild-by-EdvardMunch-FourthVersion.jpg",
    :title=> "The Sick Child",
    :year_painted=> "1907",
    :description=> "Original version painted in Nasjonalgalleriet, Oslo"},

    {:img_url=> "http://upload.wikimedia.org/wikipedia/en/thumb/5/5f/Edvard_Munch_-_Madonna_-_Google_Art_Project.jpg/106px-Edvard_Munch_-_Madonna_-_Google_Art_Project.jpg",
    :title=> "Madonna",
    :year_painted=> "1894",
    :description=> "Oil on canvas, Munch Museum, Oslo"},

    {:img_url=> "http://upload.wikimedia.org/wikipedia/en/thumb/b/b8/Edvard_Munch_-_The_Urn_-_Google_Art_Project.jpg/1024px-Edvard_Munch_-_The_Urn_-_Google_Art_Project.jpg",
    :title=> "The Urn",
    :year_painted=> "1896",
    :description=> "No description available"}]
}

painting_data.each_pair do |artist_name, paintings|

    info = artist_data[artist_name]
    current_artist = Artist.create!({
      name:         info[:name],
      photo_url:    info[:photo_url],
      nationality:  info[:nationality],
      birthday:     info[:birthday]
      })

    paintings.each do |painting|
      Painting.create!({
        img_url:       painting[:img_url],
        title:         painting[:title],
        year_painted:  painting[:year_painted],
        artist_id:     current_artist.id,
        description:   painting[:description]
        })
    end
end
