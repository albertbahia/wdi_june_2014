// var celica = {
//   color: "limegreen",
//   fuel: 100,
//   model: "Toyota Celica",
//
//   drive: function() {
//     this.fuel--;
//     return 'Vroooomm!';
//   }
//
//   refuel: function() {
//     this.fuel = 100;
//   }
// };


// function carFactory (model, color) {
//   var carObj = {};
//
//   carObj.model = model;
//   carObj.color  = color;
//   carObj.fuel  = fuel;
//
//   carObj.drive  = function() {
//     this.fuel--;
//     return 'Vroom!!'
//   };
//   carObj.refuel = function() {
//     this.fuel = 100;
//   };
//
//   return carObj;
// }
// 
// var carFunctions = {
//   drive: function() {
//     this.fuel--;
//     return 'Vroom!!'
//   },
//   refuel: function() {
//     this.fuel = 100;
//   }
// }

function Car(model, color) {
  this.model = model;
  this.color  = color;
  this.fuel  = 100;

}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vrooom!!!'
};

Car.prototype.refuel = function() {
  this.fuel = 100;
};
