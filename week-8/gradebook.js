/*
Gradebook from Names and Scores

I worked on this challenge with Timur Catakli.
This challenge took me 1.5 hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]
//console.log(scores[2][1]);

// __________________________________________
// Write your code below.

var gradebook = {
  Joseph: {
    testScores: scores[0]
  },
  Susan: {
    testScores: scores[1]
  },
  William: {
    testScores: scores[2]
  },
  Elizabeth: {
    testScores: scores[3]
  },
  addScore: function(name,score) {
    scores[students.indexOf(name)].push(score);
  },
  getAverage: function(name) {
    return average(scores[students.indexOf(name)]);
  }
};

function average(arrayIntegers){
  var total = 0;
  for(var i = 0; i < arrayIntegers.length; i++) {
    total += arrayIntegers[i];
  }
  var avg = total / arrayIntegers.length;
  return avg;
};



// __________________________________________
// Refactored Solution

var gradebook = {};
for (var student in students) {
  gradebook[students[student]] = {
    testScores: scores[student]
  };
}

gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name) {
  return average(gradebook[name]["testScores"]);
}

function average(arrayIntegers) {
  var total = 0;
  for(var i = 0; i < arrayIntegers.length; i++) {total += arrayIntegers[i];}
  return total / arrayIntegers.length;
};

// Tried to find an average method in Math but there was nothing.
// We used the object constructor notation rather than the literal notation.
// We also took out the avg variable in the average function, reducing the code to one line that returns the value of dividing the total by the arrayIntegers length.


// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// Some need another function constructed outside of the object, as we did for average here.
// We were hung up on getAverage function for awhile, we couldn't make it work until we realized we needed to use return to return the value.
// In the addScore function, we didn't need to return anything because it just updated the gradebook object.

// How did you iterate over nested arrays in JavaScript?
// The iteration expression remained the same, the trick was locating the pieces to iterate over. Working backwards,
// for the getAverage function, we called the indexOf function on the student array for the name that is passed through the function.
// This index number was then passed through the average function as the indexed value we want to access in the scores nested array.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// Unfortunately, no.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)