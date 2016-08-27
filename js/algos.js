// create a function that takes an array of phrases
// takes the length of each of the phrases
// pair the phrase length with the phrase
// return the phrase with the most letters
// keep if the current phrase is longer than the previous phase
// else keep previous phrase

function longestPhrase(phrases) {
  for (var i = phrases.length - 1; i > 0; i--)
    if (phrases[i].length > phrases[i - 1].length){
      console.log(phrases[i]);
    } else {
      console.log(phrases[i - 1]);
    }
}

longestPhrase(["long phrase","longest phrase","longer phrase"])
longestPhrase(["hello guess what", "this is the longest phrase", "or actually, its really this one hehehe"])
longestPhrase(["you", "yo", "y"])