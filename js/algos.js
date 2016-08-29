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


// longestPhrase(["long phrase","longest phrase","longer phrase"])
// longestPhrase(["hello guess what", "this is the longest phrase", "or actually, its really this one hehehe"])
// longestPhrase(["i really think i figured this one out", "is this real"])
// longestPhrase(["no", "way", "this is amazing", "it was such a small change", "i did it"])

// if obj1 key/value is similar to obj2 key/value return true
function sharePair(obj1, obj2) {
  if (Object.keys(obj1) == Object.keys(obj2)) {
    console.log("true");
  } else {
    console.log("false");
  }
}

sharePair({name: "Steven", age: 54}, {name: "Tamir", age: 54})
