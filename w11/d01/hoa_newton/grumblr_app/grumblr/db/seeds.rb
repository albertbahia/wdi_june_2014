# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Grumble.destroy_all

grumbles = Grumble.create([
	{
		author: "Alex",
		content: "I am a pretty grumpy",
		title: "First Grumpy generation",
		image: "http://hellogiggles.com/wp-content/uploads/2013/11/19/grumpy-cat-nosmatterings-of-ramblings-isnt-that-creative-sohewhistled-9qixsi5c.jpg",
		avatar: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSodchrEsrkOBfvtWBYA5RodOzC3pdzrQ4RsA1U_Qaj47zUu2go1hAmw"
	},
	{
		author: "Pete",
		content: "Happy cat",
		title: "What's up",
		image: "http://hellogiggles.com/wp-content/uploads/2013/11/19/grumpy-cat-nosmatterings-of-ramblings-isnt-that-creative-sohewhistled-9qixsi5c.jpg",
		avatar: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSodchrEsrkOBfvtWBYA5RodOzC3pdzrQ4RsA1U_Qaj47zUu2go1hAmw"
	},
	{
		author: "Patty",
		content: "Grumpier",
		title: "Stylish one",
		image: "http://hellogiggles.com/wp-content/uploads/2013/11/19/grumpy-cat-nosmatterings-of-ramblings-isnt-that-creative-sohewhistled-9qixsi5c.jpg",
		avatar: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSodchrEsrkOBfvtWBYA5RodOzC3pdzrQ4RsA1U_Qaj47zUu2go1hAmw"
	},
	{
		author: "Adam",
		content: "Beautifuly grumpy",
		title: "Having a bad day",
		image: "http://hellogiggles.com/wp-content/uploads/2013/11/19/grumpy-cat-nosmatterings-of-ramblings-isnt-that-creative-sohewhistled-9qixsi5c.jpg",
		avatar: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSodchrEsrkOBfvtWBYA5RodOzC3pdzrQ4RsA1U_Qaj47zUu2go1hAmw"
	},
	{
		author: "Hari",
		content: "skinnily grumpy",
		title: "Smiley",
		image: "http://hellogiggles.com/wp-content/uploads/2013/11/19/grumpy-cat-nosmatterings-of-ramblings-isnt-that-creative-sohewhistled-9qixsi5c.jpg",
		avatar: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSodchrEsrkOBfvtWBYA5RodOzC3pdzrQ4RsA1U_Qaj47zUu2go1hAmw"
	}
	])