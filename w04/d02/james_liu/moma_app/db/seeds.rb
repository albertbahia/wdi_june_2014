artist1  = Artist.create({
                    name: "Salvador Domingo Felipe Jacinto Dalí "
                    photo_url: "http://upload.wikimedia.org/wikipedia/commons/2/27/Salvador_Dali_NYWTS.jpg",
                    nationality: "Spain",
                    birthday: "May 11, 1904"
})

artist2 = Artist.create({
                    name: "Andy Warhol"
                    photo_url: "http://upload.wikimedia.org/wikipedia/commons/2/2b/Andy_Warhol_by_Jack_Mitchell.jpg"
                    nationality: "United STates"
                    birthday: "August 6, 1928"
})

artist3 = Artist.create({
                    name: "Benjamin Lauder Nicholson"
                    photo_url: "http://1.bp.blogspot.com/-chMrUWBNiLI/Ti0hjTxQGYI/AAAAAAAAHB8/ETvZYO_4uGA/s400/ben+nicholson+book+cover+2.jpg"
                    nationality: "United Kingdom"
                    birthday: "10 April 1894"
})

painting1 = Painting.create({
                    img_url: "http://uploads5.wikiart.org/images/salvador-dali/the-persistence-of-memory-1931.jpg"
                    title: "The Persistence of Memory"
                    artist_id: 1
                    year_painted: 1931
                    description: "Clocks and stuff"
})

painting2 = Painting.create({
                    img_url: "http://upload.wikimedia.org/wikipedia/en/9/90/DaliGreatMasturbator.jpg"
                    title: "The Great Masturbator"
                    artist_id: 1
                    year_painted: 1929
                    description: "Title says it all"
})

painting3 = Painting.create({
                    img_url: "http://whenfallsthecoliseum.com/wp-content/uploads/the-disintegration-of-the-persistence-of-memory.jpg"
                    title: "The Disintegration of the Persistence of Memory"
                    artist_id: 1
                    year_painted: 1954
                    description: "More clocks"
})

painting4 = Painting.create({
                    img_url: "http://s3-us-west-2.amazonaws.com/hypebeast-wordpress/image/2011/07/andy-warhol-campbells-soup-cans-exhibition-moca.jpg"
                    title:"Campbell's Soup Cans"
                    artist_id: 2
                    year_painted: 1962
                    description: "Campbell's Soup Cans"
})

painting5 = Painting.create({
                    img_url: "http://upload.wikimedia.org/wikipedia/en/8/88/Moon_Art_PBS.jpg"
                    title: "Moon Museum"
                    artist_id: 2
                    year_painted: 1969
                    description: "Not the best bang-for-your-buck"
})

painting6 = Painting.create({
                    img_url: "http://www.warhol.org/exhibitions/2012/15minuteseternal/en/img/art-marilyn-470x469.jpg"
                    title: "Marilyn"
                    artist_id: 2
                    year_painted: 1967
                    description: "Marilyn"
})

painting7 = Painting.create({
                    img_url: "http://www.artic.edu/aic/collections/citi/images/standard/WebLarge/WebImg_000152/4396_1631179.jpg"
                    title: "Mao"
                    artist_id: 3
                    year_painted: 1973
                    description: "Mao"
})

painting8 = Painting.create({
                    img_url: "http://media-cache-ec0.pinimg.com/originals/48/f0/cc/48f0cc05ed3a060e40819259eb3164fc.jpg"
                    title: "Two Circles"
                    artist_id: 3
                    year_painted: 1945
                    description: "Two Circles"
})

painting9 = Painting.create({
                    img_url: "http://www.hamhigh.co.uk/polopoly_fs/1.2016390!/image/722374930.jpg_gen/derivatives/landscape_490/722374930.jpg"
                    title: "Two Forms"
                    artist_id: 3
                    year_painted: 1943
                    description: "No, really. It's two forms"
})

painting10 = Painting.create({
                    img_url: "http://www.bebbfineart.co.uk/uploads/gallery/1228488297.jpg"
                    title: "Abstract Forms Lithograph"
                    artist_id: 3
                    year_painted: 1943
                    description: "I think I see an elephant"
})