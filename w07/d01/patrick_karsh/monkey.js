// 1. Write a method makeObj() that just makes an empty object and returns it to
// us.
// 2. Write a method called makeMonkey() that makes a monkey object and returns it.
//   For now, the monkey should be exactly the same as our example, hard coded.
// 3. Modify this method to accept two params, name and species, and set those on
//   the new monkey. Return that monkey.

function makeObj() {
	return {}; 
}

function makeMonkeyPatrick() {
 	return { 
	name: "Patrick",
	species: "Sugar Glider",
	foodsEaten: [], 
	eatSomething: function(food){
	this.foodsEaten.push(food); 
	return food;  
	}, 
} 

function makeMonkey(name, species) { 
	return { 
	name: name,
	species: species,
	foodsEaten: [], 
	eatSomething: function(food){
	this.foodsEaten.push(food); 
	return food;  
	}, 
}

function Monkey(name, species) { 
	return { 
	this.name = name;
	this.species = species;
	this.foodsEaten =[]; 

	this.eatSomething: function(food){
		this.foodsEaten.push(food); 
		return food;  
	}; 
}