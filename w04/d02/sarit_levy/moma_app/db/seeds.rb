artists_data = {

    "van_gogh" => {
                    name: 'Vincent van Gogh',
                    photo_url: "http://www.selectism.com/files/2013/01/TADAOCERN_VanGogh_fr.jpg",
                    nationality: "Netherlands",
                    birthday: 1853,
                    timestamps: 'timestamps',
                  },
    "picasso" => {
                    name: 'Pablo Picasso',
                    photo_url: "http://businesslife.ba.com/Media/images/lessonsh-Business-Life-Picasso-credit-Rex-943269d7-bb4d-46c3-8dd5-3421e83c3eb0-0-450x521.jpg",
                    nationality: "Spain",
                    birthday: 1881,
                    timestamps: 'timestamps',
                  },
    "monet" => {
                    name: 'Claude Monet',
                    photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Claude_Monet_1899_Nadar_crop.jpg/360px-Claude_Monet_1899_Nadar_crop.jpg",
                    nationality: "France",
                    birthday: 1840,
                    timestamps: 'timestamps',
                  }
                  }

paintings_data = {

    "van_gogh_paintings" => {
                    img_url:  ,
                    title: 'Wheatfield with Crows',
                    year_painted: 1890,
                    description:   ,
                    timestamps:   ,
                    artist:
                  },
                  {
                    img_url:  ,
                    title: 'The Old Mill',
                    year_painted: 1888,
                    description:  ,
                    timestamps:  ,
                    artist:
                  },
                  {
                    img_url:  ,
                    title: 'Irises',
                    year_painted: 1890,
                    description:  ,
                    timestamps:  ,
                    artist:
                  }

    "pablo_picasso_paintings" => {
                    img_url:  ,
                    title: 'Guernica',
                    year_painted: 1937,
                    description:   ,
                    timestamps:   ,
                    artist:
                  },
                  {
                    img_url:  ,
                    title: 'The Old Guitarist',
                    year_painted: 1903,
                    description:  ,
                    timestamps:  ,
                    artist:
                  },
                  {
                    img_url:  ,
                    title: 'Seated Woman',
                    year_painted: 1927,
                    description:  ,
                    timestamps:  ,
                    artist:
                  }

      "claude_monet_paintings" => {
                    img_url:  ,
                    title: 'Women in the Garden',
                    year_painted: 1866,
                    description:   ,
                    timestamps:   ,
                    artist:
                  },
                  {
                    img_url:  ,
                    title: 'The Waterlily Pond',
                    year_painted: 1899,
                    description:  ,
                    timestamps:  ,
                    artist:
                  },
                  {
                    img_url:  ,
                    title: 'Springtime',
                    year_painted: 1872,
                    description:  ,
                    timestamps:  ,
                    artist:
                  }
                  }

artists_data.each do |name, artist|
  Artist.create({
    name: artist[:name],
    photo_url: artist[:photo_url],
    nationality: artist[:nationality],
    birthday: artist[:birthday],
    timestamps: artist[:timestamps]
  })
end

paintings_data.each do |title, painting|
  Painting.create({
    img_url: painting[:img_url],
    title: painting[:title],
    year_painted: painting[:year_painted],
    description: painting[:description],
    timestamps: painting[:timestamps],
    artist: painting[:artist]
  })
end
