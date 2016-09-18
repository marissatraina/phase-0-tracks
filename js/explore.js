//==REVERSE FUNCTION===========
// define function reverse(str)
// define reverse word as empty string
// FOR str.length - 1, UNTIL index is >= 0
// move backwards through the index of the str 
// add each constant to empty str
// return reversed word

function reverse(str) {
  var reverseWord = "";

  for (var i = str.length - 1; i >= 0; i--) {
    reverseWord += str[i];
  }
  return reverseWord
}

//===Driver Code======
var backwards = console.log(reverse("yellow"));
if (1==1) {
  console.log(backwards);
}
