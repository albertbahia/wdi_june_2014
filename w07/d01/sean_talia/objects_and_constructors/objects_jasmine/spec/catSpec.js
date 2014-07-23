describe("Cat", function() {
  var cat;
  beforeEach(function(){
    var name = 'Brain';
    var breed = 'Tabby';
    var furColor = 'Roan';
    var weight = 10;
    var age = 4;
    cat = new Cat(name, breed, furColor, weight, age)
  })
  
// Attributes
  it("should have a name", function() {
    expect(cat.name).toBeDefined();
    expect(cat.name).toBe('Brain');
  });

  it("should have a breed", function() {
    expect(cat.breed).toBeDefined();
    expect(cat.breed).toBe('Tabby');
  });

  it("should have a fur color", function() {
    expect(cat.furColor).toBeDefined();
    expect(cat.furColor).toBe('Roan');
  });

  it("should have a weight", function() {
    expect(cat.weight).toBeDefined();
    expect(cat.weight).toBe(10);
  });

  it("should have an age", function() {
    expect(cat.age).toBeDefined();
    expect(cat.age).toBe(4);
  });

  it("should have hairballs", function() {
    expect(cat.hairballs).toBeDefined();
    expect(cat.hairballs).toEqual([]);
  });

// Behavior
  describe("meow", function() {
    it("should be able to meow", function() {
      expect(cat.meow).toBeDefined();
      expect(cat.meow()).toBe('No.')
    });
  });
  describe("judgeHuman", function() {
    it("should be able to judge a human, because of course", function() {
      expect(cat.judgeHuman).toBeDefined();
      expect(cat.judgeHuman()).toBe('Yawn...Not impressed');
    });
  });
  describe("readCollar", function() {
    it("should be a list of the dog's information ", function() {
      expect(cat.readCollar).toBeDefined();
      expect(cat.readCollar()).toBe('Name: Brain // Age: 4 // 10lbs // Roan Tabby')
    });
  });

  describe("lick", function() {
    it("should clean itself and make a hairball", function() {
      var hairballsBeforeLicking = cat.hairballs.length;
      expect(cat.lick).toBeDefined();
      cat.lick();
      expect(cat.hairballs.length).toBeGreaterThan(hairballsBeforeLicking);
    });
    it("coughs up all hairballs if it has more than three", function() {
      cat.lick();
      cat.lick();
      cat.lick();
      var hairballsAfterLickingThrice = cat.hairballs.length;
      cat.lick();
      expect(cat.hairballs).toBeLessThan(hairballsAfterLickingThrice);
      expect(cat.hairballs.length).toBe(0);
    });
  });
});