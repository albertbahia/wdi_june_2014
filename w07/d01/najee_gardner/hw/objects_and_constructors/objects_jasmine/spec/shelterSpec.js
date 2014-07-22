describe('shelter', function() {
  var shelter;
  beforeEach(function() {
    var name = 'ASPA';
    var address = '21 Union Star Street South';
    var animals = [];
    shelter = new Shelter(name, address);

  });

  // Attributes
  it('should have a name', function() {
    expect(shelter.name).toBeDefined();
    expect(shelter.name).toBe('ASPA');
  });

  it('should have an address', function() {
    expect(shelter.address).toBeDefined();
    expect(shelter.address).toBe('21 Union Star Street South');
  });

  it('should have animals', function() {
    expect(shelter.animals).toBeDefined();
    expect(shelter.animals).toEqual([]);
  });

  // Behavior
  describe('animalDetails', function() {
    it('should list the information of the anumals', function() {
      var dog1 = new Dog('Spot', 'Retriever', 'gold', 60, 7);
      var cat1 = new Cat('Mysty', 'Bangle', 'Gray', 7, 4);

      shelter.animals.push(cat1);
      shelter.animals.push(dog1);
      expect(shelter.animalDetails()).toBeDefined();
      expect(shelter).animalDetails()).toBe('Name: Mysty // Age: 4 // 7lbs // Gray Bangle\nName: Spot // Age: 7 // Retriever // 60lbs // Gold Fur');
    });
  });

  describe('acceptAnimal', function() {
    it('should add an animal to the shelter\'s list of animals', function() {
      var dog1 = new Dog('Spot', 'Retriever', 'gold', 60, 7);

      shelter.acceptAnimal(dog1);
      expect(dog.animals).toBe([dog1]);
    });
  });

  describe('offerForAdoption', function() {
    it('should remove a random animal from the animals list and return that aniimal', function() {
      var dog1 = new Dog('Spot', 'Retriever', 'gold', 60, 7);
      var dog2 = new Dog('Clifford', 'Yorkie', 'red', 200, 9);
      var cat1 = new Cat('Mysty', 'Bangle', 'Gray', 7, 4);
      var cat2 = new Cat('Garfield', 'British Shorthair Tabby', 'Orange', 10, 8);

      shelter.acceptAnimal(dog1);
      shelter.acceptAnimal(dog2);
      shelter.acceptAnimal(cat1);
      shelter.acceptAnimal(cat2);
      expect(shelter.offerForAdoption()).toBeTruthy();
      expect(shelter.animals.length).toBe(3);
    });
  });

});
