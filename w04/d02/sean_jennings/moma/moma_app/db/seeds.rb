# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Painting.create({
  artists_id: 1,
  img_url: 'https://www.nga.gov/feature/bearden/images/fullscreen/170-181.jpg',
  title: 'Prevalence of Ritual',
  year_painted: 1964,
  description: 'One of four collages for under the 1964 series Prevalence of Ritual'
})

Painting.create({
  artists_id: 1,
  img_url: 'https://www.nga.gov/feature/bearden/images/fullscreen/170-012.jpg',
  title: 'Palm Sunday Procession',
  year_painted: 1967,
  description: 'Collage of various papers with paint on fiberboard'
})

Painting.create({
  artists_id: 1,
  img_url: 'https://www.nga.gov/feature/bearden/images/fullscreen/170-131.jpg',
  title: 'Card Players',
  year_painted: 1982,
  description:'Collage of various papers with paint, ink, graphite, and bleached areas on fiberboard'
})

Painting.create({
  artists_id: 2,
  img_url: 'http://upload.wikimedia.org/wikipedia/commons/5/52/La_noche_estrellada1.jpg',
  title: 'The Starry Night',
  year_painted: 1889,
  description: 'Depicts the view outside of his sanatorium room window at Saint-Rémy-de-Provence'
})

Painting.create({
  artists_id: 2,
  img_url: 'http://totallyhistory.com/wp-content/uploads/2011/12/Starry_Night_Over_the_Rhone1.jpg',
  title: 'Starry Night Over the Rhone',
  year_painted: 1888,
  description: 'Painted at a spot on the bank of the Rhone River'
})

Painting.create({
  artists_id: 2,
  img_url: 'http://sharpmag.files.wordpress.com/2012/03/cafe-terrace-at-night.jpg',
  title: 'Cafe Terrace at Night',
  year_painted: 1888,
  description: 'Executed on an industrially primed canvas in France, September 1888'
})

Painting.create({
  artists_id: 3,
  img_url: 'http://cdn.brooklynmuseum.org/exhibitions/wangechi_mutu/images/WM-6539-Le-Noble-SavageNEW-SikkemaJenkins_1_428W.jpg',
  title: 'Le Noble Savage',
  year_painted: 2006,
  description: 'Refers to colonialist dreams of docile natives and exploitable resources'
})

Painting.create({
  artists_id: 3,
  img_url: 'http://blog.art21.org/wp-content/uploads/2014/01/Mutu-Riding-Death-in-My-Sleep-copy-749x1024.jpg',
  title: 'Riding Death in My Sleep',
  year_painted: 2002,
  description: 'Mutu used bits and pieces drawn from many ethnicities to assemble the facial features of this creature'
})

Painting.create({
  artists_id: 3,
  img_url: 'http://hmaacvoices.org/wp-content/uploads/2014/01/Misguided-Little-Unforgivable-Hierarchies-2005.jpg',
  title: 'Misguided Little Unforgivable Hierarchies',
  year_painted: 2005,
  description: 'These three figures are stacked in a composition that speaks to power dynamics'
})
