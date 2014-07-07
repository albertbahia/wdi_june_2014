movies = ["Finding Nemo", "The Call", "Captain Phillips", "Elf"]

movies.each do |movie|
	data = MovieData.search(movie)
	title = data["Title"]
	year = data["Year"].to_i
	poster_url = data["Poster"]
	plot = data["Plot"]

	m = Movie.create(title: title, year: year, poster_url: poster_url, plot: plot)

	actors = data["Actors"].split(", ")
	actors.each do |a|
		if Actor.find_by(name: a) == nil
			a = Actor.create(name: a)
			m.actors.push(a)	
		end
	end
	
end

