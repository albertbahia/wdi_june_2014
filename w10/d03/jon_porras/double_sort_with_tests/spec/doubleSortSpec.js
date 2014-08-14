describe("sort", function() {

  it("should work for an array of words", function() {
    var result = sort(["dog","cat"]);
    expect(result).toEqual(["cat","dog"]);
  });

  it("should work for an array of stringified numbers", function() {
    var result = sort(["5","3"]);
    expect(result).toEqual(["3","5"]);
  });

  it("should work for an array of words and stringified numbers", function() {
    var result = sort(["5","4","dog","1","cat"]);
    expect(result).toEqual(["1","4","cat","5","dog"]);
  });

  it("should work for negative numbers", function() {
    var result = sort(["-5","4","dog","1","cat"]);
    expect(result).toEqual(["-5","1","cat","4","dog"]);
  });

  it("should work for a multi digit numbers and duplicates", function() {
    var result = sort(["123","12","capp","apple","13","zogg","doge","5","5","5","poop","1","0","poop"]);
    expect(result).toEqual(["0","1","apple","capp","5","doge","poop","5","5","12","poop","13","123","zogg"]);
  });

});