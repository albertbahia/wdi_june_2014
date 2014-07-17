
tweeds_data = {
    "summer_vacation" => {
                    author: "Sandy Delaney",
                    content: "This is a photo of a llama from my summer vacation in Peru. So cute!",
                    image_url: "http://www.somosmundo.com/wp-content/uploads/2014/05/Machu-Picchu4.jpg",
                  },
    "tornado" => {
                    author: "Javier Lupides",
                    content: "Massive tornado is hitting our area today.
                              This photo was taken today about 50 miles from our town.
                              Please secure safe shelter if you haven't already.  Stay safe.",
                    image_url: "http://www.spc.noaa.gov/faq/tornado/alfalfa.jpg",
                  },
    "happy_valentines" => {
                    author: "Linda Dawson",
                    content: "Happy Valentines everyone!  I LOVE YOU ALL!!",
                    image_url: "http://www.wallpaperfast.com/wp-content/uploads/2013/06/Happy-valentines-desktop.jpg",
                  },
    "keep_calm" => {
                    author: "Henry Shane",
                    content: "Keep Calm And Carry On, Ya'll !",
                    image_url: "http://www.lumpsandbumps.files.wordpress.com/2012/06/keep-calm.jpg",
                  },
    "code_along" => {
                    author: "Kevin Cho",
                    content: "Hey Guys!  I attended a code-along event today to hone my ruby skills.  It was a good event.",
                    image_url: "http://www.startupdaily.com.au/wp-content/uploads/2013/11/DSC_1901-2.jpeg",
                  },
    "gay_pride" => {
                    author: "Karen Mooney",
                    content: "Lots of beautiful people strutting their stuff today at the gay pride parade. ;-) ",
                    image_url: "http://www.outtraveler.com/images/pictorial/nycPride_4.jpg",
                  },
    "hawk" => {
                    author: "James Kern",
                    content: "Saw a hawk in a flight dive to catch another bird today in Central Park.  What a 'wild' scene.
                              Took a closeup-lens shot of the hawk feeding. Amazing!",
                    image_url: "http://www.wildlensinc.org/blog/wp-content/uploads/2013/12/RTHA-NYC-4023-2s.jpg",
                  },
    "cool_kid" => {
                    author: "Samantha Marner",
                    content: "My kid. She takes after her mother, I know!",
                    image_url: "http://www.alohi-apopo.biz/wp-content/uploads/2014/06/cute_and_cool_looking_baby_girl_with_big_red_sunglasses_large.jpg",
                  },
    "humans_nyc" => {
                    author: "Tamarind Spicey",
                    content: "I love this photoblog, Humans of New York, featuring
                              street portraits and interviews collected in New York City. Check it out!",
                    image_url: "http://www.s3.fstoppers.com/wp-content/uploads/2013/10/fs-humans-of-new-york-book-interview-370x230.jpg",
                  },
    "happy_birthday" => {
                    author: "Zoraida Bright",
                    content: "Happy Birthday, Gail!! Cheers to you and congratulations!",
                    image_url: "http://www.api.ning.com/files/ujcza9N5GbIWZshMBkT14eTHoJuIX46GMfNDRy9bONTTHY24zYFWNCPIlCl4ZUW6nxVXJeZkC2PRgdtcwIMwdOA*Oo4xdKsE/birthday.jpg",
                  }
              }


tweeds_data.each do |title, tweed|
  Tweed.create({
    author: tweed[:author],
    content: tweed[:content],
    image_url: tweed[:image_url]
  })
end
