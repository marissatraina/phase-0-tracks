//----Release 0: Find the Longest Phrase----

  // Define longest phrase function that takes array as argument
      // Loop through array depending on length of array
    // Iterate through array of words to determine length of each word

  
  var longest = function(phraseArray) {

    var maxLength = 0;
    var longestPhrase = '';

    for (var i = 0; i < phraseArray.length; i++) {

      // IF condition that resets max length and longest phrase every loop
      // depending on phrase length
      if (phraseArray[i].length > maxLength) {
        maxLength = phraseArray[i].length;
        longestPhrase = phraseArray[i];

      // ELSE IF condition add multiple longest phrase words
      } else if (phraseArray[i].length === maxLength) {
        longestPhrase += (' & ' + phraseArray[i]);

      }
    
    }
    // return/print last remaining phrase(s) in array
    return longestPhrase;
  };

  // Driver Code --> tests on a few different arrays
  var arrayOne = ['hey', 'wassup', 'hello'];
  test = longest(arrayOne);
  console.log("Longest phrase result of the first batch:")
  console.log(test);

  console.log("----------------------------------------------")

  var arrayTwo = ['catch','a', 'tiger', 'by', 'the', 'toe'];
  testTwo = longest(arrayTwo);
  console.log("Longest phrase result of the second batch:")
  console.log(testTwo); 

  console.log("----------------------------------------------")


//----Release 1: Find a Key-Value Match----

  // Define inCommon function that takes two objects for arguments
    // create two arrays that contain the keys of the two objects 
    // loop through by length of key arrays  
    // set keys equal to one another to see if the value of each key is equal
      // look up how to access nested in javascript 
    // if at least one index matches return true

var inCommon = function(object1, object2) {

  for (var char1 in object1) {
    for (var char2 in object2) {
      if (char1 == char2) { 
        if (object1[char1].toString() == object2[char1].toString()) {
          return true;
        }
      }
    }
  }
  return false;
};
var object1 = {name: "Marissa", age: 22};
var object2 = {name: "Daniela", age: 22};
var object3 = {name: "Betty", age: 98, birthYear: 1918};

if (inCommon(object1, object2)) {
  console.log("The 2 objects have something in common!")
} else {
  console.log("The 2 objects are nothing alike!")
};

console.log("----------------------------------------------")

if (inCommon(object1, object3)) {
  console.log("The 2 objects have something in common!")
} else {
  console.log("The 2 objects are nothing alike!")
};


// Release 2: Generate Random Test Data

  // Random Test Data Generator function that takes number of strings
  // in array as argument
  // create empty array
  // create alphabet array
  // create number array 1 to 10
  // for each string - 
  // choose between 1 and 10 letters per string randomly by sampling
    // from number array
  // iteratively sample random number of letters from alphabet string --> store
    // join letters together to create string --> store in array
  // repeat until array is filled according to argument number

  // Driver Code --> 10 times iteration that builds array and performs
  // longest word method on array

