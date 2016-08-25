// take a string as a parameter
// create a new empty string
// take the last letter of the string
// add that letter to the new string
// continue with other letters

function reverse(string) {
  var reversedString = "";
  for (var i = string.length - 1; i >= 0; i--){
    reversedString += string[i]
  }
  console.log(reversedString);
}

reverse("Hello");

