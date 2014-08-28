var always = function(num){
  return function(){
    return num
  }
};


var three = always(3);
console.log(three()) //3

var poop = always('poop');
console.log(poop()); // 'poop'