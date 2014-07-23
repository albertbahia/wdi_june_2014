// describe("brain", function() {
//   var brain;
//   beforeEach(function(){
//     var name = 'Brain';
//     var breed = 'Tabby';
//     var furColor = 'Roan';
//     var weight = 10;
//     var age = 4;
//     brain = new Cat(name, breed, furColor, weight, age)
//   });
// describe("sam", function() {
//   var sam;
//   beforeEach(function(){
//     var name = 'Sam';
//     var breed = 'Siemese';
//     var furColor = 'Brown';
//     var weight = 7;
//     var age = 5;
//     sam = new Cat(name, breed, furColor, weight, age)
//   });
// describe("spike", function() {
//   var spike;
//   beforeEach(function(){
//     var name = 'Spike';
//     var breed = 'Bulldog';
//     var furColor = 'Grey';
//     var weight = 15;
//     var age = 9;
//     spike = new Dog(name, breed, furColor, weight, age)
//   });
// describe("biff", function() {
//   var biff;
//   beforeEach(function(){
//     var name = 'Biff';
//     var breed = 'Boxer';
//     var furColor = 'Black';
//     var weight = 20;
//     var age = 2;
//     biff = new Dog(name, breed, furColor, weight, age)
//   });
describe("shelter", function() {
  var shelter;
  beforeEach(function(){
    var name =  'ASPCA';
    var address:  '1 Smith Street';
    var animals:  [];
  });

// Attributes
  it("should have a name", function() {
    expect(shelter.name).toBeDefined();
    expect(shelter.name).toBe('ASPCA');
  });

  // it("should have animals", function() {
  //   var spike = new Dog("Spike", "Bulldog", "Grey", "200lbs", 5)
  //   shelter.acceptAnimal(spike);
  //   expect(shelter.animals).toBeDefined();
  //   expect(shelter.animals.length).toEqual(2);
  // });

// // Behavior
//   describe("meow", function() {
//     it("should be able to meow", function() {
//       expect(brain.meow).toBeDefined();
//       expect(brain.meow()).toBe('No.')
//     });
//   });
});
// });
// });
// });
// });
