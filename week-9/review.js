// Factorial

// Input: integer
// Output: the factorial of a number
// Process:
//    - CREATE a function that accepts one parameter (integer)
//        - SET a variable equal to 1 (the lowest integer of a number that could be passed through the method)
//        - IF the argument is less than 0, RETURN 0
//        - ELSE
//            - create a loop that multiplies each integer that comes between 1 and the argument passed
//            - reassign the variable to equal the product of multiplying the integers
//            - RETURN the variable that has been reassigned

// Your Solution Below
// factorial = function(integer) {
//   if (integer < 0) {
//     return 0;
//   } else {
//     var product = 1;
//     for (x = 1; x <= integer; x++) {
//       product *= x;
//     }
//     return product;
//   }
// };

// console.log(factorial(-10));
// console.log(factorial(0));
// console.log(factorial(1));
// console.log(factorial(5));
// console.log(factorial(10));

// Refactor
factorial = function(integer) {
  if (integer < 0) {return 0;}
  else {
    var product = 1;
    for (x = 1; x <= integer; x++) {product *= x;}
    return product;
  }
};

console.log(factorial(-10));
console.log(factorial(0));
console.log(factorial(1));
console.log(factorial(5));
console.log(factorial(10));


// Reflect
// What concepts did you solidify in working on this challenge?
    // Using a for loop to iterate through an object


// What was the most difficult part of this challenge?
    // Thinking through how to iterate through the numbers from 1 to the number passed as an argument; but once I realized what to do with the for loop, it made sense.


// Did you solve the problem in a new way this time?
    // Iterating through the integers is different, here I used a for loop and before I used the method each. It is the same idea, but the syntax is different enough to require me think through it.


// Was your pseudocode different from the Ruby version? What was the same and what was different?
    // I think my pseudocode is more standardized here. The solution logic is still the same, but I have a better grasp of the logic and was able to use more standard pseudocode language.