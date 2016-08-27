// create a function that takes an array of phrases
// takes the length of each of the phrases
// return the phrase with the most letters

function longestPhrase(phrases) {
  for (var i = 0; i < phrases.length; i++)
    console.log(phrases[i].length)
}

longestPhrase(["long phrase","longest phrase","longer phrase"])