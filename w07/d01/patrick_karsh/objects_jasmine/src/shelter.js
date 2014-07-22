
var unwantedCatsNDogs = { 
	name: "UnwantedCatsNDogs", 
	address: "666 Mort du Poodle Way", 
	animals: [],    
	}

	unwantedCatsNDogs.animalDetails = function() {
		for (var i = animals.length - 1; i >= 0; i--) {
			animals[i].readCollar
		};
	} 

	unwantedCatsNDogs.acceptAnimal = function(animal) {
		unwantedCatsNDogs.animals.push(animal)
	}

	unwantedCatsNDogs.offerForAdoption = function() {
		var animalIndex = animals[Math.floor ( Math.random() * animals.length )]
		unwantedCatsNDogs.animals.pop(animals[animalIndex])
	}
};  