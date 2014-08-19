var celica = {
  model: 'Toyota Celica',
  color: 'limegreen',
  fuel: 100,

  drive: function() {
    this.fuel--;
    return 'Vroom!';
  },

  refuel: function() {
    this.fuel = 100;
  }
};

//

function carFactory(model, color) {
  //create an object in here with the model and color
    var newCar = {
    model: model,
    color: color,
    fuel: 100,

    drive: function() {
      this.fuel--;
      return 'Vroom!';
    },

    refuel: function() {
      this.fuel = 100;
    }
  };
  //return the created object
  return newCar;
}

var evo = carFactory("porche", "darkblue");

// var carFunctions = {
//   drive: function() {
//     this.fuel--;
//     return 'Vroom!';
//   },
//   refuel: function() {
//     this.fuel = 100;
//   }
// };

function Car(model, color) {
  this.model = model;
  this.color = color;
  this.fuel = 100;
  // this.__proto__ = carFunctions;
}

Car.prototype.drive = function() {
  this.fuel--;
  return 'Vroom!';
};

Car.prototype.refuel = function() {
    this.fuel = 100;
};

var porsche = new Car('Porsche 911', 'black');
