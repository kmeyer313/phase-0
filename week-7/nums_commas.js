// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution




// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection

 // Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// input : Integer
// output : integer comma separated string
//steps: create a function that takes an Integer as a parameter, within the function make an array that will change the Integer to a string, split the string into separate strings, insert comma from every third element from the back, join the strings into one string, return the string

function separateComma(num) {
  var arr = num.toString();
  arr = arr.split(" ").reverse();
  for (var counter = 3; counter < arr.length; counter+=3 ) {
    arr[counter] = arr[counter].concat(",");
  }
  arr = arr.reverse().join("");
}
  // var arr = Array.prototype.slice.call(integer), output =[];
  // while (arr.length) output.push(arr.splice(0, 3).join('');//[integer];
  // arr = arr.split("").reverse();
  // var rev = arr.split("").reverse();
   // output;
  // console.log(output);
//   the part before the first semicolon initializes the loop, usualy by defining a var., second: the expression checks whether the loop must continue, final : updates the state of the loop after every iteration
//   for (var counter = 3; counter < arr.length ; counter++ ) {
//     if (counter > 3 && counter%3 == 0) {
//       return counter.push(',')
//     }
//   }


separateComma(1569743)

// "1569743"
// Initial Solution



// separateComma(1569743) // == "1,569,743"

// Refactored Solution





// Your Own Tests (OPTIONAL)