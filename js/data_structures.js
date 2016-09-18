var colors = ["Brown", "Blue", "Black", "White"];
var names = ["Lightning", "Butterscotch", "Daisy", "Chocolate"];

colors.push("Spots");
names.push("Charger");

var horses = {}

for (var i = 0; i < colors.length; i++) {
  
  horses[colors[i]] = names[i];


}

console.log(horses);


function Car(color, model, year) {
  // In this context, 'this' refers to 
  // the individual dog we're making
  console.log("Our new car:", this);
  
  // Therefore, this.name is sort of the Ruby
  // equivalent of @name
  this.color = color;
  this.model = model;
  this.year = year;
  
  // As for behavior, a function is a perfectly 
  // valid property value ... whoa!
  this.drive = function() { console.log("rooom"); };
  

}

console.log("Let's build a car ...");
// Here is where we call that constructor function
// that we just made ...
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