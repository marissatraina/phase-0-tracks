var colors = ["blue", "green", "brown", "white"];
var names = ["Frou Frou", "Candace", "Jeremy", "Butterscotch"];

colors.push("auburn");
names.push("Tulip");

var horses = {};

  for (var i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i];
  }
  console.log(horses);

//Driver Code

// console.log(colors);
// console.log(names);
// console.log(horses);

// var car = {
//   make: 'Dodge', 
//   model: 'Ram', 
//   fuelEfficient: false, 
//     drive: function() { 
//       if (this.fuelEfficient) {
//         console.log("Slow down to conserve fuel!");
//       } else {
//         console.log("Have a nice ride!");
//       }
//     }
// };

// car.drive();
// car.fuelEfficient = true;
// car.drive();

// car.speed = function() {console.log("Be mindful of the speed limit!")};
// car.speed();

var car = {make: 'Dodge', model: 'Ram', fuelEfficient: false};


function Car(make, model, fuelEfficient) {

  console.log("Our new car:", this);
  
  this.make = make;
  this.model = model;
  this.fuelEfficient = fuelEfficient;
  

  this.speed = function() { console.log("Please be mindful of the speed limit!"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's make a car ...");

var anotherCar = new Car('Subaru','Outback', true);
console.log(anotherCar);
console.log("Our car is respectful of speed:");
anotherCar.speed();
console.log("----");

car.velocity = function() {console.log("Your steady speed is too fast!")};
car.velocity();

var thirdCar = new Car('Ford','Mustang', false);
console.log(thirdCar);
console.log("Our car is disrespectful of speed:");
thirdCar.speed();
thirdCar.velocity;
console.log("----");