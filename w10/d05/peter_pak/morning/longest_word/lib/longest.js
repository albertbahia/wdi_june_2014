function longestWord(string) {
  var wordArray = string.split(/[/[^\w]+/);
  return wordArray.sort(function(a,b) {
    return b.length - a.length;
  })[0];
}
