// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Tyler McKenzie
// This challenge took me 4 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/*
The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// 1. tally up all votes for Bob as President; get vote count
// 2. tally up all votes for Bob as Vice President
// 3. tally up all votes for Bob as Secretary
// 4. tally up all votes for Bob as Treasurer
// 5. elect Louise as President
// 6. elect Herman as Vice President
// 7. elect Fred as Secretary
// 8. elect Ivy as Treasurer

// __________________________________________
// Initial Solution

function tallyVotes(obj) {
  for(var name in votes) {
    for(var prop in votes[name]) {
      var vote_cast = votes[name][prop];
      if (vote_cast in voteCount[prop]) {
        voteCount[prop][vote_cast] += 1;
      }
      else {
        voteCount[prop][vote_cast] = 1;
      }
    };
  };
};
tallyVotes(votes);

var max = 0, position, votes;
for(position in voteCount) {
  for(votes in voteCount[position]) {
    if(voteCount[position][votes] >= max) {
      max = voteCount[position][votes];
      officers[position] = votes;
    };
  };
};
console.log(officers);


// __________________________________________
// Refactored Solution
// I just collapsed if/else statements and for loops to make it look a little nicer.
// After 4 hours, I'm a little spent. I spent a lot of time looking through the documentation
// throughout our session but there wasn't anything we tried out or that seemed to fit.
// I'm eager to do a peer review and see how others cracked this one.

function tallyVotes(obj) {
  for(var name in votes) {
    for(var prop in votes[name]) { var vote_cast = votes[name][prop];
      if (vote_cast in voteCount[prop]) { voteCount[prop][vote_cast] += 1;}
      else {voteCount[prop][vote_cast] = 1;}
    };
  };
};
tallyVotes(votes);

var max = 0, position, votes;
for(position in voteCount) {
  for(votes in voteCount[position]) {
    if(voteCount[position][votes] >= max) { max = voteCount[position][votes]; officers[position] = votes; };
  };
};
console.log(officers);





// __________________________________________
// Reflection
/*

What did you learn about iterating over nested objects in JavaScript?
- You don't need a counter.
- Need to use bracket notation to access the properties to iterate over.
- Breaking it down one step at a time is important.
- syntax --> for (var name in something) {};

Were you able to find useful methods to help you with this?
- No. :( I spent a lot of time in the JS documentation on this challenge; and I am frustrated with it, or with JavaScript?

What concepts were solidified in the process of working through this challenge?
- How to access and assign new values to objects
- Iteration syntax for nested objects: for (var name in something) {};

*/


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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)


// // __________________________________________
// // Initial Solution Record of Attempts
// (for my own reflection if I want to come back and see if some of my/our attempts were close, or where it went wrong)

// function tallyVotes(obj) {
//   for(var name in votes) {
//     for(var prop in votes[name]) {
//       var vote_cast = votes[name][prop];
//       if (vote_cast in voteCount[prop]) {
//         voteCount[prop][vote_cast] += 1;
//       }
//       else {
//         voteCount[prop][vote_cast] = 1;
//       }
//     };
//   };
// };
// tallyVotes(votes);

// var max = 0, position, votes;
// for(position in voteCount) {
//   for(votes in voteCount[position]) {
//     if(voteCount[position][votes] >= max) {
//       max = voteCount[position][votes];
//       officers[position] = votes;
//     };
//   };
// };
// console.log(officers);


// function tallyVotes(obj) {
//   for(var name in votes) {
//     for(var prop in votes[name]) {
//       var vote_cast = votes[name][prop];
//       if (vote_cast in voteCount[prop]) {
//         voteCount[prop][vote_cast] += 1;
//       }
//       else {
//         voteCount[prop][vote_cast] = 1;
//       }
//     };
//   };
// };
// tallyVotes(votes);

// var max = 0, position, votes;
// for(position in voteCount) {
//   for(votes in voteCount[position]) {
//     if(voteCount[position][votes] >= max) {
//       max = voteCount[position][votes];
//       officers[position] = votes;
//     };
//   };
// };
// console.log(officers);
// // function tally(vote_array) {
// //   // for (var i = 0; i < Object.keys(votes_array).length; i++) {
// //     for (var key in votes) {
// //       console.log(key);
// //       for (var y in x)
// //     };
// //   };

//   // for(var voter in votes) {
//   //   var vote = votes[voter];
//   //   for(var pos in vote) {
//   //     var electee = vote[pos]
//   //     // if (voteCount[pos][electee]) {
//   //     //   voteCount[pos][electee] += 1;
//   //     // } else {
//   //     //   voteCount[pos][electee] = 1;
//   //     // };
//   //   };
//   //   // return vote_array;
//   // };

//   // console.log(voteCount)
// // }

// // for(var key in votes) {
// //   for(var obj in key) {
// //     // var tally = key.value = 1
// //     console.log(key.value += 1);
// //   };
// // };

// // console.log(votes["Alex"]["president"]);
// // console.log(tally(votes));
// // console.log(Object.keys(votes).length);

// // function tallyVotes(obj) {
// //   for(var name in votes) {
// //     for(var prop in votes[name]) {
// //       var vote_cast = votes[name][prop];
// //       if (vote_cast in voteCount[prop]) {
// //         voteCount[prop][vote_cast] += 1;
// //       }
// //       else {
// //         voteCount[prop][vote_cast] = 1;
// //       }
// //     };
// //   };
// // };
// // tallyVotes(votes)
// // console.log(voteCount);

// // var max = 0;
// // var x = 0;
// // for( x in voteCount) {
// //   if( voteCount[prop][vote_cast][x] > max) {
// //     max = voteCount[prop][vote_cast][x];
// //   }
// // };

// // for(var position in voteCount) {
// //     for(var name in voteCount[position]) {
// //       // var vote_cast = votes[name][prop];

// //         for (var x in voteCount[position][name][x])
// //           if( voteCount[position][name][x] > max) {
// //             max = voteCount[position][name][x];
// //           }
// //       };
// // }

// // var max = 0, position, votes;
// // for(position in voteCount) {
// //   for(votes in voteCount[position]) {
// //     if(voteCount[position][votes] > max) {
// //       max = voteCount[position][votes];
// //       console.log(position);
// //     };
// //   };
// // };
// // // voteCount[postition][name][x]
// // console.log(max);


// // Object {
// //   president:
// //    Object {
// //      Bob: 3,
// //      Mary: 1,
// //      Cindy: 1,
// //      Louise: 10,
// //      Fred: 4,
// //      Ivy: 1,
// //      Nate: 1,
// //      Oscar: 1,
// //      Paulina: 1,
// //      Tracy: 1,
// //      Wesley: 1,
// //      Steve: 1 },