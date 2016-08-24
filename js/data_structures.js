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