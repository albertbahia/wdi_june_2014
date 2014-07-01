Tweed.destroy_all
tweed_data = {
  "John Smith" => {
                  author: "John Smith",
                  content: "The #worldcup is amazing #soccer #futbol",
                  image_url: "http://i.imgur.com/pQ5zWiA.jpg"
                },
  "BarackObama1" => {
                  author: "Barack Obama",
                  content: "Brock is in the HOUSEEE #Murica",
                  image_url: "http://i.imgur.com/REOSqMw.png"
                },
  "SBNation" => {
                  author: "SB Nation",
                  content: "German Kid Reacts",
                  image_url: "http://www.fillmurray.com/620/330"
                },
  "SBNation2" => {
                  author: "SB Nation",
                  content: "Hey maybe this will end on penalty kicks ",
                  image_url: "http://www.fillmurray.com/620/330"
                },
  "Yankees" => {
                  author: "Yankees",
                  content: "Jacoby is ready to go",
                  image_url: "https://pbs.twimg.com/media/BraNBKICEAAPHXW.jpg"
                },
  "BarackObama2" => {
                  author: "Barack Obama",
                  content: "Your voice matters in this: Add your name today if you #StandWithWomen.",
                  image_url: "https://pbs.twimg.com/media/BraLyvLCIAAVafl.png"
                },
  "Knicks" => {
                  author: "Knicks",
                  content: "Get ready for #KnicksSL14 with a #Knicks/Pacers matchup from last season. NYK IN60 tonight, 8PM on @MSGNetworks! ",
                  image_url: "https://pbs.twimg.com/media/BraGc55CQAAzHJz.jpg"
                },
  "Yankees2" => {
                  author: "Yankees",
                  content: "The Captain take BP before tonight's game.",
                  image_url: "https://pbs.twimg.com/media/BraFazICAAADgg0.jpg"
                },
  "SBNation3" => {
                  author: "SB Nation",
                  content: "Soccer Hurts",
                  image_url: "http://www.fillmurray.com/620/330"
                },
  "Yankees3" => {
                  author: "Yankees",
                  content: "How the #Yankees and Rays will line up tonight.",
                  image_url: "https://pbs.twimg.com/media/BrZ9h09CAAAJof3.jpg"
                }
  }



  tweed_data.each do |author_key,tweed|
    Tweed.create!({
      author:       tweed[:author],
      content:      tweed[:content],
      image_url:    tweed[:image_url]
    })
  end
