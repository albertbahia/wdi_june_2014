# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Artist.create!({
  name: 'Edward Hopper',
  photo_url: "http://www.ibiblio.org/wm/paint/auth/hopper/hopper.self-portrait.jpg",
  nationality: 'USA',
  birthday: "1882-07-22"
  })

Artist.create!({
  name: 'Grant Wood',
  photo_url: 'http://en.wikipedia.org/wiki/Grant_Wood#mediaviewer/File:Grant_Wood.jpg',
  nationality: 'USA',
  birthday: "1891-02-13"
  })

Artist.create!({
  name: 'Georges-Pierre Seurat',
  photo_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Georges_Seurat_1888.jpg/220px-Georges_Seurat_1888.jpg',
  nationality: 'France',
  birthday: "1859-12-02"
    })


Painting.create!({
  title: 'Nighthawks',
  img_url: 'http://www.edwardhopper.net/images/paintings/nighthawks.jpg',
  year_painted: 1942,
  description: 'Edward Hopper said that Nighthawks was inspired by “a restaurant on New York’s Greenwich Avenue where two streets meet,” but the image—with its carefully constructed composition and lack of narrative—has a timeless, universal quality that transcends its particular locale. One of the best-known images of twentieth-century art, the painting depicts an all-night diner in which three customers, all lost in their own thoughts, have congregated. Hopper’s understanding of the expressive possibilities of light playing on simplified shapes gives the painting its beauty. Fluorescent lights had just come into use in the early 1940s, and the all-night diner emits an eerie glow, like a beacon on the dark street corner. Hopper eliminated any reference to an entrance, and the viewer, drawn to the light, is shut out from the scene by a seamless wedge of glass. The four anonymous and uncommunicative night owls seem as separate and remote from the viewer as they are from one another. (The red-haired woman was actually modeled by the artist’s wife, Jo.) Hopper denied that he purposefully infused this or any other of his paintings with symbols of human isolation and urban emptiness, but he acknowledged that in Nighthawks “unconsciously, probably, I was painting the loneliness of a large city.”
— Entry, Essential Guide, 2013, p. 58.',
  artist_id: 1
  })

Painting.create!({
    title: 'Office in a Small City',
    img_url: 'http://www.metmuseum.org/toah/images/hb/hb_53.183.jpg',
    year_painted: 1953,
    description: "The solitary office worker in this scene is isolated both physically and emotionally. There is no indication of his particular profession, as he sits in his shirtsleeves; he appears, in fact, to be daydreaming rather than working. The postwar culture of American business is evident in the mass-produced office furniture, the impersonal atmosphere of the office itself, and the man's detachment from his unseen coworkers. Despite the light and air afforded by his corner office, he appears trapped in place. He is framed by the office window, and his head is profiled against another window and the wall of the building beyond, in a manner that suggests his containment within his environment. The solitude of the man, and the contrast between the stark, utilitarian upper story of the building and its decorative false front, visible at the lower right, suggest Hopper's own ambivalence toward modern urban life.",
    artist_id: 1
    })

Painting.create!({
      title: 'New York Movie',
      img_url: 'http://www.edwardhopper.net/images/paintings/newyork-movie.jpg',
      year_painted: 1939,
      description: "A movie theater in New York, one of those elaborate mock palaces where Hollywood spirits us for a few hours into another world - in this case apparently the high mountains. Spirits us as audience, that is, but not the usher, who has probably seen the movie a thousand times and waits for the curtain, mulling over her own thoughts. Her stationary figure counterpoints the screen with its incessantly flickering illusions of places not here and not now.
Like most of the female figures in Hopper's paintings, this one was based on his wife, Jo, who posed standing under a lamp in the hall of their apartment. Her efforts were perhaps rewarded by the many movie and theater visits the couple made together.

As the many preliminary studies for the picture show, Hopper not only drew his wife in various different poses for New York Movie, but precisely designed the auditorium decor, down to the pattern of the carpet. Again and again he sketched the foyers, stairways, and auditoriums of his favorite movie houses, the Palace, Globe, Republic, and Strand.

The entire painting is concerned with leavetaking, with seeming to be sated with a wealth of illusions that includes the film and the building, and with allowing this artificial world to lull one into thinking that life is not alienating and that the modern world is wonderful because it provides larger-than-life experiences in the theater. The usherette who is caught up in her own daydreams and the isolated spectators, however, point up the hollowness of this sumptuous and action-filled world. The usherette is a twentieth-century counterpart to the bored waitress in Édouard Manet's A Bar at the Folies-Bergeres. Similar to Manet, Hopper has a genius for making the illusory world of the theater so enticing, so glamorous, and so completely empty. He tantalizes his assumed viewer with an almost mystical apricot light that illuminates the steps that lead out of this unreal world where the usherette stands guard.",
      artist_id: 1
      })


Painting.create!({
    title: 'American Gothic',
    img_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg/640px-Grant_Wood_-_American_Gothic_-_Google_Art_Project.jpg',
    year_painted: 1930,
    description: '
This familiar image was exhibited publicly for the first time at the Art Institute of Chicago, winning a three-hundred-dollar prize and instant fame for Grant Wood. The impetus for the painting came while Wood was visiting the small town of Eldon in his native Iowa. There he spotted a little wood farmhouse, with a single oversized window, made in a style called Carpenter Gothic. “I imagined American Gothic people with their faces stretched out long to go with this American Gothic house,” he said. He used his sister and his dentist as models for a farmer and his daughter, dressing them as if they were “tintypes from my old family album.” The highly detailed, polished style and the rigid frontality of the two figures were inspired by Flemish Renaissance art, which Wood studied during his travels to Europe between 1920 and 1926. After returning to settle in Iowa, he became increasingly appreciative of midwestern traditions and culture, which he celebrated in works such as this. American Gothic, often understood as a satirical comment on the midwestern character, quickly became one of America’s most famous paintings and is now firmly entrenched in the nation’s popular culture. Yet Wood intended it to be a positive statement about rural American values, an image of reassurance at a time of great dislocation and disillusionment. The man and woman, in their solid and well-crafted world, with all their strengths and weaknesses, represent survivors.
— Entry, Essential Guide, 2013, p. 56.',
    artist_id: 2
    })

Painting.create!({
    title: 'The Birthplace of Herbert Hoover, West Branch, Iowa',
    img_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Grant_Wood_Birthplace_of_Herbert_Hoover_MIA_81105.jpg/799px-Grant_Wood_Birthplace_of_Herbert_Hoover_MIA_81105.jpg',
    year_painted: 1931,
    description: 'The work focuses on the sprawling eclectic house placed center stage and spotlit almost theatrically. The white siding sparkles against the greens and earth tones which dominate the rest of the scene. Its repeated rectangles (windows, roof planes, doorway, chimneys, each "block" of the house) contrast with the repeated curves and arcs of the trees, landscape, and undulating road. Wood calls attention to the "important" part of the house, the birthplace cottage, in a number of ways. A tiny figure, dressed in a gray suit, wearing a hat but no tie, points to the cottage with a raised right arm. His shadow emphasizes his gesture. The drainpipe on the front portion of the house leads our eye back to the cottage. So, too, does the implied compositional line from the bridge abutment, man, shrub, and water pump. From the left, our eye travels from outbuilding to woodpile to clothesline to birthplace. Tree trunks are on line with the house, and sidewalks seem to radiate from it.',
    artist_id: 2
    })

Painting.create!({
    title: 'The Pump',
    img_url: 'http://www.artic.edu/aic/collections/citi/images/standard/WebMedium/WebImg_000013/31937_227725.jpg',
    year_painted: 1937,
    description: 'Grant Wood, famous for his representations of the Midwest—of which the Art Institute’s American Gothic (1930.934) is his most recognizable example—intended The Pump to be an illustration for Sinclair Lewis’s novel Main Street (1920). This image of a contemporary water pump would have been a perfect fit for Lewis’s novel about life in a midwestern town. The drawing was given to the Art Institute by Carter Manny, Jr., who received it as a high school graduation gift from the artist in 1937.',
    artist_id: 2
    })


Painting.create!({
    title: 'A Sunday Afternoon on the Island of La Grande Jatte',
    img_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/A_Sunday_on_La_Grande_Jatte%2C_Georges_Seurat%2C_1884.jpg/1024px-A_Sunday_on_La_Grande_Jatte%2C_Georges_Seurat%2C_1884.jpg',
    year_painted: 1884,
    description: "French people on a lawn.",
    artist_id: 3
    })


Painting.create!({
    title: 'Bathers at Asnières',
    img_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Baigneurs_a_Asnieres.jpg/1024px-Baigneurs_a_Asnieres.jpg',
    year_painted: 1884,
    description: 'Frenchies chillin',
    artist_id: 3
    })


Painting.create!({
    title: 'Jeune femme se poudrant',
    img_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Georges_Seurat_021.jpg/640px-Georges_Seurat_021.jpg',
    year_painted: 1890,
    description: "Don't even ask",
    artist_id: 3
    })
