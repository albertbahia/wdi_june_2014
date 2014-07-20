var add_one = function(num) {
  return ++num;
};

describe('Map', function() {
  it('should return a new array with the new elements via the callback', function() {
    expect(map([1, 2, 3],add_one)).toEqual([2,3,4]);
  });
  it('should not change the original array', function() {
    arr = [3, 4, 5];
    map(arr,add_one);
    expect(arr).toEqual([3, 4, 5]);
  });
});
