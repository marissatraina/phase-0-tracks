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
  console.log("longest TEST 1:");
  console.log(test);

  console.log("----------------------------------------------");

  var arrayTwo = ['catch','a', 'tiger', 'by', 'the', 'toe'];
  testTwo = longest(arrayTwo);
  console.log("longest TEST 2:");
  console.log(testTwo); 

  console.log("----------------------------------------------");


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

console.log("inCommon TEST 1:");

if (inCommon(object1, object2)) {
  console.log("The 2 objects have something in common!");
} else {
  console.log("The 2 objects are nothing alike!");
};

console.log("----------------------------------------------");

console.log("inCommon TEST 2:");

if (inCommon(object1, object3)) {
  console.log("The 2 objects have something in common!");
} else {
  console.log("The 2 objects are nothing alike!");
};


// Release 2: Generate Random Test Data

  // Random Test Data Generator function that takes number of strings
  // in array as argument
  // create empty array
  // create alphabet array
  // for each string - 
  // randomly select number between 1 & 10 for # of letters in word
  // loop through selecting random letters to create word depending on random 
  // # of letters --> use random number to index alphabet array
  // combine randomly selected letters to create word
    // store words in words array
  // repeat until array is filled according to array length argument

  var randomTest = function(length) {
    var wordArray = [];
    var alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
                    'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
                    's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    

    // loop to create word
    for (var i = 0; i < length; i++) {
      var word = []; // stores random letters to be joined later
      var random = Math.floor((Math.random() * 10) + 1);

        // inner loop to randomly select letters 
        for (var j = 0; j < random; j++) {
          var random2 = Math.floor((Math.random() * 26) + 1);
          var letter = alphabet[random2];
          word.push(letter);
        }
      word = word.join('');
      wordArray.push(word);
    }

    return wordArray;
  };

  // Function to randomly select length for randomTest argument

  // Driver Code --> 10 times iteration that builds array and performs
  // longest word method on array

console.log("----------------------------------------------");
console.log("randomTest TEST:");

var length = 3;
var test4 = randomTest(length);
console.log(test4);

console.log("----------------------------------------------");
console.log("Final Iterative Test:")
var length = 4;

for (var i = 0; i < 10; i++) {
  var wordsArray = randomTest(length);
  var longestPhrase = longest(wordsArray);

  console.log("Group of " + length + " random words: " + wordsArray.join(', '));
  console.log("Longest word(s) of this group: \n" + longestPhrase);
  console.log("- - - -");
}


