// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: Jovanka N.

// Pseudocode
// input : integer
// output : integer comma separated string
// steps:
// - create a function that takes an integer as a parameter
//    - within the function make an array that will change the integer to a string
//    - split the string into separate strings
//    - reverse the array
//    - insert comma from every third element
//    - join the strings into one string
//    - return the string

// Initial Solution
function separateComma(num) {
  var arr = num.toString();
  arr = arr.split("").reverse();
  for (var counter = 3; counter < arr.length; counter+=3 ) {
  //  note to self: (1st expression initializes the loop, usually by defining a variable; 2nd expression checks whether the loop must continue; 3rd expression updates the state of the loop after every iteration)
    arr[counter] = arr[counter].concat(",");
  }
  arr = arr.reverse().join("");
  return arr
};

console.log(separateComma(1569743)) // == "1,569,743"
console.log(separateComma(156))
console.log(separateComma(1569))
console.log(separateComma(15697431569743))

// Refactored Solution
function separateComma(num) {
  var arr = num.toString().split("").reverse();
  for (var counter = 3; counter < arr.length; counter+=3 ) {
    arr[counter] = arr[counter].concat(",");
  }
  return arr.reverse().join("");
};

// Your Own Tests (OPTIONAL)

// Reflection
// What was it like to approach the problem from the perspective of JavaScript?
// Did you approach the problem differently?
// - We couldn't reverse a string, so we needed to make it an array, but then the
//    rest of the logic worked similarly, just with different syntax.
//
// What did you learn about iterating over arrays in JavaScript?
// - the syntax is different; the use of (), {}, and ; made it a little tedious;
//    I prefer the words do/end while I am still figuring things out.
//
// What was different about solving this problem in JavaScript?
// - Finding that there are not always methods that we used in Ruby that work in JS,
//    so we had to work our way through that.
//
// What built-in methods did you find to incorporate in your refactored solution?
// - In refactoring, we just condensed a few lines together. The built-in method
//    that I learned more about in this challenge was .concat. I did not know you
//    could use it as we did here, with iteration. That was new for me to learn.
