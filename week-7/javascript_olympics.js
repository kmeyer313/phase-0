 // JavaScript Olympics

// I paired with David Rothschild on this challenge.

// This challenge took me 1.25 hours.

// Warm Up

// Bulk Up
// Pseudocode win function
// Input: athletes array
// Output: changed property athlete.win
// Steps: Loop through the athletes array.
// On each item, add a string "win" that combines the name and the event properties.

var athletes =  [
  {name:"Sarah Hughes", event: "Ladies's Singles"},
  {name: "athlete2", event: "Juggling"}
]

function forEach(array, action) {
  for (var i =0; i< array.length; i++)
    action(array[i]);
}
forEach(athletes, function (athletes) {
        athletes.win = athletes.name + " won the " + athletes.event + "."
});


// Jumble your words
// Pseudocode reverseString function
// Input: string as an argument
// Output: reverse of string
// Steps:
// Create an array that is the string
// Reverse the array
// Turn the array back into a string

function reverseString(string) {
 return string.split('').reverse().join('')
}

console.log(reverseString("cat"))

// 2,4,6,8
// Pseudocode evenNumbers function
// Input: array of numbers
// Output: array of only even numbers
// Steps:
// create empty array, evenArray
// loop through array
//   if number is divisible by 2 with no remainder
//     add it to evenArray
//   else
//     nothing
//   endIf
// return evenArray

function evenNumbers(arrayNumbers) {
  var evenArray = [];
  for (var i = 0; i < arrayNumbers.length; i++) {
    if (arrayNumbers[i] % 2 == 0) {
      evenArray.push(arrayNumbers[i]);
    }
  }
  return evenArray;
}

// "We built this city"
// example from resource
// function myObject(){
//     this.iAm = 'an object';
//     this.whatAmI = function(){
//         alert('I am ' + this.iAm);
//     };
// };

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

// driver test code
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*

What JavaScript knowledge did you solidify in this challenge?
- Using for (var i =0; i< array.length; i++) to iterate
- you cannot reverse a string in string format, you need to change it to an array, reverse the array, and then join it back together as a string

What are constructor functions?
- a different way to declare a function that is preferred if it is needed to do some initial work before the object is created or if multiple instances of the object is required, where each instance can be changed during the lifetime of the script
- the literal notation is preferred when you don't want the code interfering with other scripts running in the program or if there is only a single object, rather than more than one instance

How are constructors different from Ruby classes (in your research)?
- Ruby classes seem like a much bigger deal than constructors, or rather the way each were presented in my learning made it seem so. I think the organization of classes are cleaner and easier to read because they are organized within. Functions don't necessarily have to group or ordered in a certain way. They can be accessed even when declared below the code that is calling it. They operate quite similarly, classes are easier to read.

*/