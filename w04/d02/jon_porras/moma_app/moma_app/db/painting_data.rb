def get_painting_data
  painting_data = {"renemagritte"=>[{:img_url=>"http://uploads8.wikiart.org/images/rene-magritte/the-evening-gown-1954(1).jpg",
                                  :title=>"Evening Gown",
                                  :year_painted=>"1954",
                                  :description=>"This is a good one."},
                                  {:img_url=>"http://www.abcgallery.com/M/magritte/magritte16.JPG",
                                  :title=>"The Human Condition",
                                  :year_painted=>"1933",
                                  :description=>"Oh man, This is a good one."},
                                  {:img_url=>"http://girlwithjavacurls.typepad.com/.a/6a00d8341cc9c253ef0134800cd7a0970c-800wi",
                                  :title=>"The Lovers",
                                  :year_painted=>"1928",
                                  :description=>"Very Romantic."}],

                                  "agnesmartin" => [{:img_url=>"http://harmony-blog.com/wp-content/uploads/2011/07/agnes-martin-copy.jpg",
                                  :title=>"Falling Blue",
                                  :year_painted=>"1963",
                                  :description=>"Beautiful work."},
                                  {:img_url=>"http://www.moma.org/collection_images/resized/341/w500h420/CRI_151341.jpg",
                                  :title=>"Harbor Number 1",
                                  :year_painted=>"1959",
                                  :description=>"one of a kind."},
                                  {:img_url=>"http://lisacongdon.com/blog/wp-content/uploads/2012/04/CRI_88996.jpg",
                                  :title=>"Mountain 1",
                                  :year_painted=>"1966",
                                  :description=>"Monumental piece."}],

                                  "josephalbers" => [{:img_url=>"http://www.sfmoma.org/images/artwork/medium/79.125_01_D02.jpg",
                                  :title=>"Homage to the Square",
                                  :year_painted=>"1976",
                                  :description=>"Colorful Work"},
                                  {:img_url=>"http://www.lifeofanarchitect.com/wp-content/uploads/2011/11/albers-homage-to-the-square-01.jpg",
                                  :title=>"Growing",
                                  :year_painted=>"1976",
                                  :description=>"Colorful and vibrant."},
                                  {:img_url=>"http://www.moma.org/collection_images/resized/153/w155h170crop/CRI_214153.jpg",
                                  :title=>"Graphic Techtonic",
                                  :year_painted=>"1942",
                                  :description=>"Colorful and vibrant yet again."}

    ]}
    return painting_data
end
