Artist.create({
  name: "Vincent van Gogh",
  photo_url: "http://a2.files.biography.com/image/upload/c_fill,g_face,h_300,q_80,w_300/MTE1ODA0OTcxODExNDQwMTQx.jpg",
  nationality: "Netherlands",
  birthday: '3/30/1853',
  });

Artist.create({
  name: "Pablo Picasso",
  photo_url: "http://i.huffpost.com/gen/831576/thumbs/s-PABLO-PICASSO-large640.jpg?4",
  nationality: "Spain",
  birthday: '10/25/1881'
  });

Artist.create({
  name: "Claude Monet",
  photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Claude_Monet_1899_Nadar_crop.jpg/1024px-Claude_Monet_1899_Nadar_crop.jpg",
  nationality: "France",
  birthday: '11/14/1840'
  });

Painting.create({
  title: "Impression Sunrise",
  img_url: "http://www.monetalia.com/paintings/monet-impression-sunrise.jpg",
  year_painted: 1872,
  description: " It gave rise to the name of the Impressionist movement.",
  artist_id: 3
  });

Painting.create({
  title: "Woman with a Parasol",
  img_url: "http://www.monetalia.com/paintings/large/monet-woman-with-a-parasol-right.jpg",
  year_painted: 1875,
  description: "Claude Monet captured his family in Woman with a Parasol.",
  artist_id: 3
  });

Painting.create({
  title: "Water Lily Pond",
  img_url: "http://www.friendsofart.net/static/images/art2/claude-monet-the-water-lily-pond;-pink-harmony.jpg",
  year_painted: 1900,
  description: "In 1893, Monet, a passionate horticulturist, purchased land with a pond near his property in Giverny.",
  artist_id: 3
  });

Painting.create({
  title: "The Starry Night",
  img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg",
  year_painted: 1889,
  description: "Van Gogh's night sky is a field of roiling energy. Below the exploding stars, the village is a place of quiet order.",
  artist_id: 1
  });

Painting.create({
  title: "Irises",
  img_url: "http://www.chinaoilpaintinggallery.com/oilpainting/Vincent-van-Gogh/Irises_01.jpg",
  year_painted: 1889,
  description: "Irises is one of many paintings and prints of irises by the Dutch artist Vincent van Gogh. Irises was painted while Vincent van Gogh was living at the asylum.",
  artist_id: 1
  });

Painting.create({
  title: "Cafe Terrace at Night",
  img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Van_Gogh_-_Terrasse_des_Caf%C3%A9s_an_der_Place_du_Forum_in_Arles_am_Abend1.jpeg/600px-Van_Gogh_-_Terrasse_des_Caf%C3%A9s_an_der_Place_du_Forum_in_Arles_am_Abend1.jpeg",
  year_painted: 1888,
  description: "The painting is not signed, but described and mentioned by the artist in three letters.",
  artist_id: 1
  });

Painting.create({
  title: "Guernica",
  img_url: "https://upload.wikimedia.org/wikipedia/en/7/74/PicassoGuernica.jpg",
  year_painted: 1937,
  description: "Guernica shows the tragedies of war and the suffering it inflicts upon individuals, particularly innocent civilians.",
  artist_id: 2
  });

Painting.create({
  title: "The Old Guitarist",
  img_url: "https://upload.wikimedia.org/wikipedia/en/b/bc/Old_guitarist_chicago.jpg",
  year_painted: 1903,
  description: "Picasso was very poor. His poverty made him identify and relate to beggars, prostitutes and other downtrodden outcasts in society.",
  artist_id: 2
  });

Painting.create({
  title: "The Weeping Woman",
  img_url: "https://upload.wikimedia.org/wikipedia/en/1/14/Picasso_The_Weeping_Woman_Tate_identifier_T05010_10.jpg",
  year_painted: 1937,
  description: "This painting was the final and most elaborate of the series of women.",
  artist_id: 2
  });
