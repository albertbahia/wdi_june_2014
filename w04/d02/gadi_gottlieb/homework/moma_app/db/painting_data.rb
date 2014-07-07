def get_painting_data
  painting_data = {
    "davinci" =>
      [{
        :title=>"Mona Lisa",
        :img_url=>"http://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg/687px-Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg",
        :year_painted=>"1517",
        :description=>"famous portrait of a woman"
    },
    {
        :title=>"Ginevra de' Benci",
        :img_url=>"http://www.lairweb.org.nz/leonardo/ginevra.jpg",
        :year_painted=>"1478",
        :description=>"admired by da Vinci"
    },
    {
        :title=>"The Battle of Anghiari",
        :img_url=>"http://img.rt.com/files/art-and-culture/news/vinci-anghiari-fresco-leonardo-379/i6fc80b9c673281085b7371fbe0924225_leonardo_da_vinci_paint.si.jpg",
        :year_painted=>"1505",
        :description=>"Lost painting"
    }],

    "vangogh" => [
      {
        :title=>"The Starry Night",
        :img_url=>"http://www.vangoghgallery.com/catalog/image/0612/Starry-Night.jpg",
        :year_painted=>"1889",
        :description=>"Night and beautiful"
      },
      {
        :title=>"At Eternity's Gate",
        :img_url=>"http://stephenliddell.files.wordpress.com/2014/02/sorrowing-old-man-vincent_willem_van_gogh_002.jpg",
        :year_painted=>"1890",
        :description=>"Dude sitting on a chair"
      },
      {
        :title=>"The Yellow House",
        :img_url=>"http://www.qualityartandsigns.com/Van%20Gogh,%20The%20Yellow%20House%203D.jpg",
        :year_painted=>"1888",
        :description=>"wonderfully yellow"
      }],
    "picasso" => [
      {
        :title=>"Dora Maar au Chat",
        :img_url=>"http://upload.wikimedia.org/wikipedia/en/c/c3/Dora_Maar_Au_Chat.jpg",
        :year_painted=>"1941",
        :description=>"dude looks like a jester"
      },
      {
        :title=>"The Old Guitarist",
        :img_url=>"http://www.cre8it.com/nowwhatzinesep02/zinegraphicssep/oldguitarist.jpg",
        :year_painted=>"1903",
        :description=>"Dead looking guy playing guitar"
      },
      {
        :title=>"The Weeping Woman",
        :img_url=>"http://upload.wikimedia.org/wikipedia/en/1/14/Picasso_The_Weeping_Woman_Tate_identifier_T05010_10.jpg",
        :year_painted=>"1937",
        :description=>"big girls don't cry"
      }
    ]
  }
  return painting_data
end
