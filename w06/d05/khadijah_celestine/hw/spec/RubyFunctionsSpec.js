var add_one = function(num) {
  return ++num;
};

var arr = [3, 4, 5];

describe('Map', function() {
  it('should return a new array with the new elements via the callback', function() {
    expect(map([1, 2, 3],add_one)).toEqual([2,3,4]);
  });
  it('should not change the original array', function() {
    map(arr,add_one);
    expect(arr).toEqual([3, 4, 5]);
  });
});

describe('Include', function() {
  it('should return true if the value is in the array', function() {
    expect(include(arr, 3)).toEqual(true);
  });
  it('should return false if the value is not in the array', function() {
    expect(include(arr, 6)).toEqual(false);
  });
  it('should not change the original array', function () {
    include(arr, 4);
    expect(arr).toEqual([3, 4, 5]);
  });
});

var odd = function(num) {
  return num % 2 !== 0;
};

describe('Select', function() {
  xit('should accept a function that returns true or false as input', function() {
  });
  it('should return a new array of values that retured true from funtion', function() {
    expect(select(arr,odd)).toEqual([3,5]);
  });
  it('should not change the original array', function() {
    select(arr, odd);
    expect(arr).toEqual([3, 4, 5]);
  });
});

describe('Reject', function() {
  xit('should accept a function that returns true or false as input', function() {
  });
  it('should return a new array of values that retured false from funtion', function() {
    expect(select(arr,odd)).toEqual([2]);
  });
  it('should not change the original array', function() {
    select(arr, odd);
    expect(arr).toEqual([3, 4, 5]);
  });
});

describe('Sample', function() {
  xit('should accept an array and return a random value from that array', function() {
  });
  xit('should accept an extra argument to limit the choices to sample from', function() {
  });
  xit('should default to the size of the array if the limit is greater than the size of the array', function() {
  });
});
