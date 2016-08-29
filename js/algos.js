// create a function that takes an array of phrases
// takes the length of each of the phrases
// keep if the current phrase is longer than the previous phase

function longestPhrase(phrases) {
  longerPhrase = "";
  for (var i = phrases.length - 1; i >= 0; i--)
    if (phrases[i].length > longerPhrase.length) {
      longerPhrase = phrases[i];
    }
  console.log(longerPhrase);
 }


// if obj1 key/value is similar to obj2 key/value return true
// look through each kv compare with other

function sharePair(obj1, obj2) {
  var obj1Keys = Object.keys(obj1);
  var obj2Keys = Object.keys(obj2);
  var shared = [];
  for (var i = 0; i < obj1Keys.length; i++) {
    // check if keys match, if so put in shared array
    if (obj1Keys[i] == obj2Keys[i]) {
      shared.push(obj1[obj1Keys[i]]);
      return true;
    }
    else
      return false;
    }
  }



// take integer for length
// make an array of strings of that length
function integerStrings(integer) {
  // set up array for the string
  var randomString = [];
  //initiate alphabet string
  var alphabet = "abcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i <= integer - 1; i ++) {
    var currentWord = "";
    for (var x = 0; x < Math.floor((Math.random() * 10) + 1 ); x++) {
      var index = Math.floor((Math.random() * alphabet.length) + 1);
      currentWord += alphabet[index];
    }
    randomString.push(currentWord);
  }
  return randomString;
}

integerStrings(3)

// generates an array, print array, feed to longest word function, print result
function driverCode(num) {
  for (var i = 0; i < num; i ++) {
    var intString = integerStrings(Math.floor((Math.random() * 15) + 1));
    console.log(intString);
    var longPhrase = longestPhrase(intString);
    console.log(longPhrase);
  }
}

//Driver Code
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(sharePair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(driverCode(10));