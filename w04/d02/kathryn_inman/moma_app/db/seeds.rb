# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Artist.create(name: 'Mark Rothko', photo_url: 'http://www.nga.gov/feature/rothko/rothko-a.jpg', nationality: 'America', birthday: '9/25/1903',  timestamp: Time.now)

Artist.create(name: 'Georg Grosz', photo_url: 'http://www.settemuse.it/pittori_scultori_europei/grosz/george_grosz_foto3.jpg', nationality: 'Germany', birthday: '7/26/1893',  timestamp: Time.now)

Artist.create(name: 'Leonor Fini', photo_url: 'http://www.cfmgallery.com/Artwork/Leonor-Fini/Leonor-Fini-Cats.gif', nationality: 'Argentina', birthday: '8/30/1907',  timestamp: Time.now)





Painting.create(img_url: 'http://geroasrothko.files.wordpress.com/2011/08/img_0253.jpg', title: 'Green and Maroon', year_painted: 1953, description: "how could anyone find this foreboding", timestamp: Time.now, artist_id: 1)
Painting.create(img_url: 'https://d1ycxz9plii3tb.cloudfront.net/additional_images/5078270c30de9800020002eb/large.jpg', title: 'Blue and Grey', year_painted: 1962, description: "oooohhhhh, aaaaaaaaahhhhh", timestamp: Time.now, artist_id: 1)
Painting.create(img_url: 'http://4.bp.blogspot.com/_BBmOm1l_P08/TPwa1VabDwI/AAAAAAAAA28/sficGG89Wdg/s320/Untitled+%25281939+-+Mark+Rothko%2529.jpgg', title: 'Untitled', year_painted: 1939, description: "a deviation from abstraction", timestamp: Time.now, artist_id: 1)


Painting.create(img_url: 'http://www.prospectmagazine.co.uk/wp-content/uploads/2013/09/George-Grosz-John-der-Frauenm%C3%B6rder-John-the-Woman-Slayer-1916.-Courtesy-of-Richard-Nagy-Ltd-London.jpg', title: 'John, der Frauenmörder (John, the Woman Slayer)', year_painted: 1916, description: "yikes", timestamp: Time.now, artist_id: 2)
Painting.create(img_url: 'http://www.blackmagazin.com/wp-content/uploads/2014/06/artwork_-George-Grosz-1893%E2%80%931959-A-Victim-of-Society.-Remember-Uncle-August-the-Unfortunate-Inventor-1919.jpg', title: 'Remember Uncle August', year_painted: 1959, description: "yes, I do remember", timestamp: Time.now, artist_id: 2)
Painting.create(img_url: 'http://upload.wikimedia.org/wikipedia/en/c/c4/Made_in_Germany_by_George_Grosz_1920.jpg', title: 'Made In Germany', year_painted: 1920, description: "that's pretty insulting", timestamp: Time.now, artist_id: 2)


Painting.create(img_url: 'http://cultured.com/images/image_files/2864/6394_o_leonor_fini.jpg', title: 'Seven Cats', year_painted: 1977, description: "cats tho!", timestamp: Time.now, artist_id: 3)
Painting.create(img_url: 'http://cultured.com/images/image_files/2864/6347_o_leonor_fini_self_portrait__argentine_artist.jpg', title: 'Self Portrait', year_painted: 1970, description: "pretty", timestamp: Time.now, artist_id: 3)
Painting.create(img_url: 'http://cultured.com/images/image_files/2864/4987_o_leonor_fini___spirits.jpg', title: 'Spirits', year_painted: 1958, description: "two spirits", timestamp: Time.now, artist_id: 3)
