# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.destroy_all
Actor.destroy_all
Trailer.destroy_all

movie1 = Movie.create(
	title: "True Detective",
	year: 2014,
	poster_url: "http://www-deadline-com.vimg.net/wp-content/uploads/2014/01/true-detective-hbo__140124234003.jpg",
	plot: "True Detective is an American television crime drama series on HBO created and written by Nic Pizzolatto, with the first season directed by Cary Joji Fukunaga."

	)

movie1.actors << Actor.create(
	name: "Mathew McConaughey",
	photo_url: "http://ia.media-imdb.com/images/M/MV5BMTg0MDc3ODUwOV5BMl5BanBnXkFtZTcwMTk2NjY4Nw@@._V1_SX214_CR0,0,214,317_AL_.jpg",

	)
movie1.actors << Actor.create(
	name: "Woody Harrelson",
	photo_url: "http://upload.wikimedia.org/wikipedia/commons/9/95/Woody_Harrelson_cropped_by_David_Shankbone.jpg",
	)
movie1.trailers << Trailer.create(
	title: "True Detective",
	embed_url: "http://www.youtube.com/embed/TXwCoNwBSkQ",

	)

movie2 = Movie.create(
	title: "21 Jump Street",
	year: 2014,
	poster_url: "http://www.graffitiwithpunctuation.net/wp-content/uploads/2014/06/217587-22-jump-street-poster1.jpg",
	plot: "After making their way through high school (twice), big changes are in store for officers Schmidt and Jenko when they go deep undercover at a local college."

	)

movie2.actors << Actor.create(
	name: "Jonah Hill",
	photo_url: "http://ia.media-imdb.com/images/M/MV5BMTUyNDU0NzAwNl5BMl5BanBnXkFtZTcwMzQxMzIzNw@@._V1_SY317_CR28,0,214,317_AL_.jpg",
	
	)
movie2.actors << Actor.create(
	name: "Channing Tatum",
	photo_url: "http://ia.media-imdb.com/images/M/MV5BMTc4OTI3Mzg2Nl5BMl5BanBnXkFtZTcwMDAxNTU3OA@@._V1_SX214_CR0,0,214,317_AL_.jpg",

	)
movie2.trailers << Trailer.create(
	title: "21 Jump Street",
	embed_url: "https:///www.youtube.com/embed/ZirgAYBcOgo",

	)

movie3 = Movie.create(
	title: "Maleficent",
	year: 2014,
	poster_url: "http://www.thegloss.com/wp-content/uploads/2013/11/maleficent-poster.jpg",
	plot: "The untold story of Disney's most iconic villain from the 1959 classic Sleeping Beauty."

	)

movie3.actors << Actor.create(
	name: "Angella Jolie",
	photo_url: "http://pinkhope.org.au/wp-content/uploads/2013/05/imdb_angelina_-jolie.jpg",

	)
movie3.actors << Actor.create(
	name: "Elle Fanning",
	photo_url: "http://www.insomniacmania.com/sites/default/files/Elle-Fanning-Super-8-Press-Conference-elle-fanning-22309157-1331-2000.jpeg",

	)
movie3.trailers << Trailer.create(
	title: "Maleficent",
	embed_url: "https://www.youtube.com/embed/w-XO4XiRop0",
	
	)


omdb_base_url = "http://www.omdbapi.com/?"

first_movie_data = JSON.parse(HTTParty.get("#{omdb_base_url}t=batman"))

Movie.create(
	title: first_movie_data["Title"],
	poster_url: first_movie_data["Poster"],
	year: first_movie_data['Year']
	)
