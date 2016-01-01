 // Manipulating JavaScript Objects

// I worked on this challenge: by myself

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {
  name: "Adam",
}

terah.spouse = adam;
terah.weight = 125;
delete terah.eyeColor;
terah.spouse.spouse = terah;
terah.children = {};
terah.children.carson = {};
terah.children.carson = {name: "Carson"};
terah.children.carter = {};
terah.children.carter = {name: "Carter"};
terah.children.colton = {};
terah.children.colton = {name: "Colton"};
adam.children = terah.children

// __________________________________________
// Reflection: Use the reflection guidelines
// What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// I didn't know how to do step 6, which was adding a spouse property to adam and assign it the value of terah. When I read the Driver Code, I saw the notation that the test is looking for, which is terah.spouse.spouse. The chaining of properties was new to me, which is why I didn't know to do that at first.

// How difficult was it to add and delete properties outside of the object itself?
// Once I got into the rhythm, it started to make sense for how to do this. I didn't find it that difficult.

// What did you learn about manipulating objects in this challenge?
// It was pretty simple to add and delete properties and values in the object. You can also nest variables that are new objects. That was new for me.

//
//
// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)