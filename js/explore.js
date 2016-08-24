// REVERSE FUNCTION
// define function reverse(str)
// define reverse word as empty string
// use str.length to gauge how long string is
// set i equal to the length of the string minus 1
// loop through str i backwards 
// add each constant to empty str
// return reversed word

function reverse(str) {
  var reverseWord = "";

  for (var i = str.length - 1; i >= 0; i--) {
    reverseWord += str[i];
  }
  return reverseWord
}

// Driver Code
var backwards = console.log(reverse("yellow"));
if (1==1) {
  console.log(backwards);
}
