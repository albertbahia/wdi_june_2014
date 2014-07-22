Homework 07-01

#### Learning Objectives
- Practice creating objects using a constructor in JavaScript
- Practice creating objects using literal notation
- Practice Unit Testing in JavaScript
- Practice working with JavaScript primitives and collections

## Introduction to Jasmine And Constructors

For the first part of this assignment you are going practice creating objects using a constructor. To aid in this process I have provided a set of specs using Jasmine, the JavaScript testing framework you read about this past weekend. The design of Jasmine tests is very similar to RSpec, using describe blocks and it blocks to organize your specs. One difference however is that your tests are run in the browser. Remember to take the specs one at a time. I would suggest commenting out all of the tests from the beginning and making them pass one at a time, so you can get a feel for how they are working.

To run your specs you have to open the `SpecRunner.html` file. Reload the page to have your tests run again. Don't worry, automation is coming. You should place all code in the `cat.js` and `dog.js` files in the `src` folder. All script tags have been included for you.

You will be designing Object constructors for a Cat and a Dog.

### Cat Constructor

A Cat has the following properties:

- a name
- a breed
- a fur color
- a weight
- an age
- a collection of hairballs

In addition, a cat has the following behaviors:

- it can meow
- it can judge a human
- it can have it's collar read
- it can lick itself
  - if a cat licks itself it adds a hairball to its collection (a hairball is just a string)
  - if it has more than three hairballs then it should cough up all of them

### Dog Constructor

A Dog has the following properties:

- a name
- a breed
- a fur color
- a weight
- an age
- a collection of toys

In addition, a dog has the following behaviors:

- it can bark
- it can have it's collar read
- it can get a new toy
- it can chew up a random toy
  - if a dog chews it's toy the toy should be destroyed
  - the toy should be removed from the list of toys

## Literally, objects.

__You should utilize the Cat and Dog constructors here__

Define an object using literal notation. Store the object in a variable called shelter. This object should have the following properties:

- a name
- an address
- a list of animals (cats and dogs)
- a function `animalDetails` that will return the details on all animals collars, that exist in its list of animals.
- a function `acceptAnimal` that will add a new animal object to the shelter's list of animals
- a function `offerForAdoption` that will randomly remove an animal from the shelter's list and return it.

Make 2 cat objects and 2 dog objects and use them to test that your shelter object is functional.
