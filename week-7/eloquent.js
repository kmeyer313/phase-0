
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!



// Program Structure
// Write your own variable and do something to it.
var name = "Katie"
console.log(name.length);


// Write a program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite food too!" Run it in the Chrome console.
// prompt("What is your favorite food?", "");
// alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Triangle Solution
var triangle = "#";
var counter = 0
while (counter < 8) {
  console.log(triangle);
  triangle = triangle + "#";
  counter++;
}

// FizzBuzz Solution
for (var num = 1; num <= 100; num++)
  if (num % 3 == 0 && num % 5 == 0)
    console.log("FizzBuzz");
  else if (num % 3 == 0)
    console.log("Fizz");
  else if (num % 5 == 0)
    console.log("Buzz");
  else
    console.log(num);

// Functions

// Complete the `minimum` exercise.
// Your code here.
function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
    }
console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Katie",
  age: 28,
  food: ["pizza", "berries", "avacados"],
  quirk: "adores humpback whales"
};

console.log(me.food[1]);
console.log(me.quirk)
console.log((me.name) + " " + (me.quirk));