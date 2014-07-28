describe("dog", function() {
  var dog;
  beforeEach(function() {
    var name = 'Pinky';
    var breed = 'Great Dane';
    var furColor = 'Black';
    var weight = 200;
    var age = 4;
    var toys = [];
    dog = new Dog(name, breed, furColor, weight, age);
  });

// Attributes
  it("should have a name", function() {
    expect(dog.name).toBeDefined();
    expect(dog.name).toBe('Pinky');
  });

  it("should have a breed ", function() {
    expect(dog.breed).toBeDefined();
    expect(dog.breed).toBe('Great Dane');
  });

  it("should have a furColor", function() {
    expect(dog.furColor).toBeDefined();
    expect(dog.furColor).toBe('Black')
  });

  it("should have a weight", function() {
    expect(dog.weight).toBeGreaterThan(0);
    expect(dog.weight).toEqual(200);
  });

  it("should have an age", function() {
    expect(dog.age).toBeGreaterThan(0);
    expect(dog.age).toBe(4)
  });

  it("should be able to have toys", function() {
    expect(dog.toys).toBeDefined();
    expect(dog.toys).toEqual([]);
  });

// Behavior
  describe("bark", function() {
    it("should be able to bark", function() {
      expect(dog.bark).toBeDefined();
      expect(dog.bark()).toBe('Bow Wow Wow Yippie Yo Yippie Yay')
    });
  });

  describe("readCollar", function() {
    it("should be a list of the dog's information", function() {
      expect(dog.readCollar).toBeDefined();
      expect(dog.readCollar()).toBe('Name: Pinky // Age: 4 // Great Dane // 200lbs // Black Fur')
    });
  });

  describe("getToy", function() {
    var toy = 'Ball';
    it("should be able to add a toy to it's list of toys", function() {
      var toysBeforeCall = dog.toys.length;
      dog.getToy(toy);
      expect(dog.toys.length).toBeGreaterThan(toysBeforeCall);
    });
  });

  describe("chewUpToy", function() {
    var toy = 'ball';
    it("should destroy a toy and list it out", function() {
      dog.getToy(toy);
      expect(dog.chewUpToy).toBeDefined();
      expect(dog.chewUpToy()).toMatch(/Sorry, I destroyed the/)
      expect(dog.toys.length).toBe(0)
    });
  });
});
