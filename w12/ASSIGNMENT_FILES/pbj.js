var addJelly = addNutButter('peanut');
console.log(addJelly('blueberry jam'));

function addNutButter(butterType) {
  return function(secondItem) {
    return 'You made a ' + butterType + ' butter and ' + secondItem + ' sandwich.'
  }
}