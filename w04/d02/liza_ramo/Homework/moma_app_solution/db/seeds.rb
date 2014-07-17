Painting.destroy_all
Artist.destroy_all

artist = Artist.create(
  name: 'Pablo Picasso',
  birthday: '1881-10-25',
  nationality: 'Spanish',
  photo_url: 'http://www.photo.rmn.fr/CorexDoc/RMN/Media/TR1/5S3I0G/90-008868.jpg'
  )

Painting.create(
  title:'The Old Guitarist',
  img_url:'http://upload.wikimedia.org/wikipedia/en/b/bc/Old_guitarist_chicago.jpg',
  year_painted: 1903,
  description:'An oil painting by Pablo Picasso created late 1903–early 1904. It depicts an old, blind, haggard man with threadbare clothing weakly hunched over his guitar, playing on the streets of Barcelona, Spain.',
  artist_id: artist.id
  )