var colors = ["Brown", "Blue", "Black", "White"];
var names = ["Lightning", "Butterscotch", "Daisy", "Chocolate"];

colors.push("Spots");
names.push("Charger");

var horses = {}

for (var i = 0; i < colors.length; i++) {
  horses[colors[i]] = names[i];
}

//==DRIVER CODE====
console.log(horses);


//===CAR CONSTRUCTOR FUNCTION
function Car(color, model, year) {

  console.log("Our new car:", this);
  
  this.color = color;
  this.model = model;
  this.year = year;
  
  this.drive = function() { console.log("vrooom"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
}

//===DRIVER CODE=====
console.log("Let's build a car ...");
var car = new Car("Red", "Honda", 2000);
console.log(car);
console.log("Our car can drive:");
car.drive();
console.log("----");

console.log("Let's build another car ...");
var anotherCar = new Car("Green","Toyota", 2016);
console.log(anotherCar.model);
console.log("This new car can drive, too:");
anotherCar.drive();
console.log("----")