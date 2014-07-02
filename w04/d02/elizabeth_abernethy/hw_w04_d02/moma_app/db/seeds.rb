  Artist.create({
  name: 'Roy Lichtenstein',
  photo_url: 'http://wpcontent.answcdn.com/wikipedia/en/thumb/4/4f/Roy_Lichtenstein.jpg/250px-Roy_Lichtenstein.jpg',
  nationality: 'United States of America',
  birthday: '10/27/1923'
  });
  Artist.create({
  name: 'Piet Mondrian',
  photo_url: 'http://hilobrow.com/wp-content/uploads/2014/03/Piet-Mondrian-by-Andre-Kertesz-176_001.jpeg',
  nationality: 'Netherlands',
  birthday: '3/7/1872'
  });
  Artist.create({
  name: 'Salvador Dali',
  photo_url: 'http://www.bbc.co.uk/bbcone/modernmasters/images/virtual-exhibition/dali/standard/mm-ve-dali01.jpg',
  nationality: 'Spain',
  birthday: '5/11/1904'
  });

  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/849/w500h420/CRI_67849.jpg',
  title: 'Reverie from 11 Pop Artists, volume II',
  year_painted: 1965,
  description: 'One from a portfolio of eleven screenprints by various artists',
  artist_id: 1
  });
  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/121/w500h420/CRI_158121.jpg',
  title: 'Interior with Mobile',
  year_painted: 1992,
  description: 'Oil and synthetic polymer paint on canvas',
  artist_id: 1
  });
  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/988/w500h420/CRI_6988.jpg',
  title: 'Lincoln Center / September 12-22 1966',
  year_painted: 1966,
  description: '4th New York Film Festival / Philarmonic Hall',
  artist_id: 1
  });



  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/506/w500h420/CRI_292506.jpg',
  title: 'Composition No. II, with Red and Blue',
  year_painted: 1929,
  description: 'Oil on canvas',
  artist_id: 2
  });
  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/540/w500h420/CRI_203540.jpg',
  title: 'Broadway Boogie Woogie',
  year_painted: 1942,
  description: "Mondrian, who had escaped to New York from Europe after the outbreak of World War II, delighted in the city's architecture. He was also fascinated by American jazz, particularly boogie-woogie, finding its syncopated beat, irreverent approach to melody, and improvisational aesthetic akin to what he called, in his own work, the destruction of natural appearance; and construction through continuous opposition of pure means—dynamic rhythm.",
  artist_id: 2
  });
  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/364/w500h420/CRI_161364.jpg',
  title: 'Trafalgar Square',
  year_painted: 1939,
  description: 'In September 1938 Mondrian moved from Paris to London to escape the threat of a German invasion. There he made Trafalgar Square, the first in a series of paintings titled after locations in cities that gave him refuge during World War II.',
  artist_id: 2
  });



  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/006/w500h420/CRI_257006.jpg',
  title: 'The Persistence of Memory',
  year_painted: 1931,
  description: 'Time is the theme here, from the melting watches to the decay implied by the swarming ants.',
  artist_id: 3
  });
  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/188/w500h420/CRI_159188.jpg',
  title: 'Debris of an Automobile Giving Birth to a Blind Horse Biting a Telephone',
  year_painted: 1938,
  description: 'Oil on canvas',
  artist_id: 3
  });
  Painting.create({
  img_url: 'http://www.moma.org/collection_images/resized/929/w500h420/CRI_240929.jpg',
  title: 'Illumined Pleasures',
  year_painted: 1929,
  description: 'The title of this work may refer to the luminous imagery projected on or performed within the theaterlike boxes that dominate the composition. Here Dalí played with the disjunctions between reality and the illusion experienced in the darkness of a movie theater.',
  artist_id: 3
  });
