// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Get the most matches/points
// Goals: match 4 like cards in your hand
// Characters: 2-4 players
// Objects: 2 players (user and computer)
// Functions: deal cards; identify two cards that match in hand; draw card from deck; ask other player for match; opponent checks hand; point counters; game over

// Pseudocode
// 1) Create deck of cards collection, four of each card (array) var deck
// 2) Create player 1 and 2 (objects) var player1, player2
//    - each property has a value of 0 to begin
// 3) Shuffle deck of cards (function) shuffle
//    Input: deck array
//    Output: shuffled deck array
//    Steps:
//      - set three variables, one for length of array
//      - set one variable equal to random number multiplied by array length, round it down
//      - assign and reassign variables to swap values of the new number and the original number indexed by array length value
//      - return the shuffled array
// 4) Deal 5 cards to each player (function) deal
//    Input: deck array
//    Output: 2 arrays (player1, player2)
//    Steps:
//      - remove 5 elements from deck array and move into new player arrays

// 5) For each item in array, where it matches a property of the players' hands objects, += 1 to the value
// ^^^ This is where I am having the most trouble ^^^ (As well as with the "turn" function a few lines down)
//    Input: player arrays
//    Output: player objects where values have been added to corresponding properties from arrays (flounder: 1)
//    Steps:
//    - cards go from array to player object, increasing value of property for 1 of each card that matches a property in player's hand
        // I want to iterate through array and iterate through property name in object,
        // when there is a match (==) then += to that property's value


// 6) Check match to see if there are matches in hand (function) checkMatch
//    Input: a player's hand (object)
//    Output: return player's hand updated
//    Steps:
//      - if a property has a value of 4
//        - set that property's value to 0
//        - add 1 to point
//      - else do nothing
//      - print object to console
// 7) Display hand (function) displayHand
//    Input: player's deck object
//    Output: player's deck object
//    - print to console the player's deck

// 8) Ask opponent if they have a certain card (function) turn  // Also struggled here because it requires similar logic as for loop above
//     Input:
//     Output:
//     Steps:
//      - prompt user input for what card they want to ask opponent for
//      - if opponent has 1 or more of card in their deck that matches the user input
//        - print to console "Yes, I do."
//        - reassign property's value to zero for opponent
//        - reassign property's value to += 1 for user
//      - else
//        - print to console "Go fish!"

// 9) Add new card from deck to player's hand (function) goFish // again, same problem with moving an array item to integer value in object's matching property
//    Input: deck and a player's hand
//    Output: player's hand updated
//    Steps:
//      - select item from deck and add to hand
//      - increase value of matching property += 1

// 10) Notify when game is over (function) gameOver
//    Input: deck, and both players' hands?
//    Output: false or true with winner
//    Steps:
//      - when no cards left in deck, player1, or player2 hand
//      - print to console winner (player with most points)


// Initial Code
// 1) Create deck of cards collection, four of each card (array) var deck
var deck = ["flounder", "flounder", "flounder", "flounder", "catfish", "catfish", "catfish", "catfish", "sunfish", "sunfish", "sunfish", "sunfish", "angelfish", "angelfish", "angelfish", "angelfish", "flying_fish", "flying_fish", "flying_fish", "flying_fish", "whale", "whale", "whale", "whale", "dolphin", "dolphin", "dolphin", "dolphin", "goldfish", "goldfish", "goldfish", "goldfish", "shark", "shark", "shark", "shark", "sailfish", "sailfish", "sailfish", "sailfish"];

// 2) Create player 1 and 2 (objects) var player1, player2
//    - make Player class or create with literal constructor?
//    - each property has a value of 0 to begin

function Player(){
  this.flounder = 0;
  this.catfish = 0;
  this.sunfish = 0;
  this.angelfish = 0;
  this.flying_fish = 0;
  this.whale = 0;
  this.dolphin = 0;
  this.goldfish = 0;
  this.shark = 0;
  this.sailfish = 0;
  this.points = 0;
};

var player1 = new Player();
var player2 = new Player();

// console.log(player1); // This is printing "Player {...}"" to console, why not "player1 {...}"??
// console.log(player2); // Ditto ^^^

// Literal contstruction of objects // Is this better? Did I do something wrong with the class above?
// var player1 = newObject();
// var player1 = {
//   flounder: 0,
//   catfish: 0,
//   sunfish: 0,
//   angelfish: 0,
//   flying_fish: 0,
//   whale: 0,
//   dolphin: 0,
//   goldfish: 0,
//   shark: 0,
//   sailfish: 0,
//   points: 0,
// }

// var player2 = newObject();
// var player2 = {
//   flounder: 0,
//   catfish: 0,
//   sunfish: 0,
//   angelfish: 0,
//   flying_fish: 0,
//   whale: 0,
//   dolphin: 0,
//   goldfish: 0,
//   shark: 0,
//   sailfish: 0,
//   points: 0,
// }


// 3) Shuffle deck of cards (function) shuffle
//    Input: deck array
//    Output: shuffled deck array
//    Steps:
//      - set three variables, one for length of array
//      - set one variable equal to random number multiplied by array length, round it down
//      - assign and reassign variables to swap values of the new number and the original number indexed by array length value
//      - return the shuffled array
function shuffle(array) {
  var m = array.length, t, i;
  // While there remain elements to shuffle...
  while (m) {
    // Pick a remaining element...
    i = Math.floor(Math.random() * m--);
    // And swap it with the current element.
    t = array[m];
    array[m] = array[i];
    array[i] = t;
  }
  return array;
}
shuffle(deck);
console.log(deck);
// shuffle(deck);
// console.log(deck);


// 4) Deal 5 cards to each player (function) deal
//    Input: deck array
//    Output: 2 arrays (player1, player2)
//    Steps:
//      - remove 5 elements from deck array and move into new player arrays

var player1arr = []; // Are these necessary to be accessed outside of deal function?
var player2arr = [];

function deal(deck) {
  // shuffle()
  player1arr = deck.splice(0,5);
  player2arr = deck.splice(0,5);
}

deal(deck);
console.log(player1arr);
console.log(player2arr);
console.log(deck); // before this printed the deck less the 10 items I spliced out... running it again later and it printed the array with all of the cards... Not sure what changed.


// STUCK HERE -- trying to push 5 elements from deck array into player objects where the property is the card ("sunfish", "whale") and the value is the amount of occurances.
// 5) For each item in array, where it matches a property of the players' hands objects, += 1 to the value
// ^^^ This is where I am having the most trouble ^^^ (As well as with the "turn" function a few lines down)
//    Input: player arrays
//    Output: player objects where values have been added to corresponding properties from arrays (flounder: 1)
//    Steps:
//    - cards go from array to player object, increasing value of property for 1 of each card that matches a property in player's hand
        // I want to iterate through array and iterate through property name in object,
        // when there is a match (==) then += to that property's value
// Should look something like this:
// var player1 = newObject();
var player1 = {
  flounder: 0,
  catfish: 2,
  sunfish: 0,
  angelfish: 0,
  flying_fish: 1,
  whale: 0,
  dolphin: 1,
  goldfish: 0,
  shark: 1,
  sailfish: 4,
  points: 0,
}

// var player2 = newObject();
var player2 = {
  flounder: 1,
  catfish: 0,
  sunfish: 2,
  angelfish: 2,
  flying_fish: 0,
  whale: 0,
  dolphin: 0,
  goldfish: 0,
  shark: 0,
  sailfish: 0,
  points: 0,
}

// var player1 = {};
// var player2 = {};
// How to increase value of properties based on what was spliced to each player's hand?
// Nothing here is functional, yet.
// function toObject(array, object) {

//   var arrayLength = array.length;
//   for (var i=0; i<arrayLength; i++) {
//     if (array[i] == object)
//   }


//   for (var j = 0; )
//   for (var i in array) {
//     if i == object[j]
//   }
//   // for (var i = 0; i < array.length; ++i)
//     // player1[i] = array[i]; // this gives me an object, but the key/values are the reverse of how I need them
//     // return player1
//   return player1;
//     // repeat to return player2
// }


// 6) Check match to see if there are matches in hand (function) checkMatch
//    Input: a player's hand (object)
//    Output: return player's hand updated
//    Steps:
//      - if a property has a value of 4
//        - print to console "Match!"
//        - set that property's value to 0
//        - add 1 to point
//      - else do nothing
//      - print object to console

function checkMatch(playerObject) {
  for (var property in playerObject) {
    if (playerObject[property] == 4) {
      console.log("Match!");
      playerObject[property] = 0;
      playerObject["points"] += 1;
    }
  };
  console.log(playerObject);
};

checkMatch(player1);  // changed player1 sailfish property value to 4 above for testing

// 7) Display hand (function) displayHand
//    Input: player's deck object
//    Output: player's deck object
//    - print to console the player's deck
function display(playerObject) {
  console.log(playerObject);
}

// display(player1);
// display(player2);


// 8) Ask opponent if they have a certain card (function) turn  // Also struggled here because it requires similar logic as for loop above
//     Input:
//     Output:
//     Steps:
//      - prompt user input for what card they want to ask opponent for
//      - if opponent has 1 or more of card in their deck that matches the user input
//        - print to console "Yes, I do."
//        - reassign property's value to -= 1 for opponent
//        - reassign property's value to += 1 for user
//      - else
//        - print to console "Go fish!"

// function turn(player, opponent) {
//   var question = prompt("opponent, do you have a ______? (type one of the following that you have in your hand: flounder, catfish, sunfish, angelfish, flying_fish, whale, dolphin, goldfish, shark, sailfish)")
//   for (property in player) {
//     if (question is a property && property[value] >= 1) {  // This if statement needs fixing
//       var match = prompt("It's a match!");
//       // opponent[value] = 0;
//       // player[value] += 1;
//       // player[points] += 1;
//     } else {
//       console.log("Go fish!");
//     }
//   };
// };

// 9) Add new card from deck to player's hand (function) goFish // again, same problem with moving an array item to integer value in object's matching property
//    Input: deck and a player's hand
//    Output: player's hand updated
//    Steps:
//      - select item from deck and add to hand
//      - increase value of matching property += 1


function goFish(deck, hand) {
  // player picks card from deck and value is added to appropriate property
  // for every value that is decreased, draw that amount from the deck, new cards must be added to appropriate key/value
}


// 10) Notify when game is over (function) gameOver
//    Input: deck, and both players' hands?
//    Output: false or true with winner
//    Steps:
//      - when no cards left in deck, player1, or player2 hand
//      - print to console winner (player with most points)
function gameOver() {
}

// Refactored Code






// Reflection

// What was the most difficult part of this challenge?
//  - coming up with a game
//  - figuring out how to pull items from the array and move them into the object;

// What did you learn about creating objects and functions that interact with one another?
//  - I have a lot to learn. I understood it when working through CodeAcademy, but creating it from scratch is still pretty hard for me.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//  - splice seemed to work initially when I wrote it in the deal function, but when I ran it later it did not work as I needed it to

// How can you access and manipulate properties of objects?
//  - you can access properties by using bracket or dot notation -- objectName[property] or objectName.property can be used to access
//  - What I trip up on here is when to use quotation marks and when not to. In the checkMatch function, it wasn't working at
// first because I had parentheses around all the values in the brackets in the code block. Then I removed them all, and it still
// wasn't working, I couldn't access the "points" property. Then I put quotes just around "points" and the function worked! So,
// for a variable name in a loop, no quotation marks, but for the actual property name, use quotes to access it.


var deck = ["flounder", "flounder", "flounder", "flounder", "catfish", "catfish", "catfish", "catfish", "sunfish", "sunfish", "sunfish", "sunfish", "angelfish", "angelfish", "angelfish", "angelfish", "flying_fish", "flying_fish", "flying_fish", "flying_fish", "whale", "whale", "whale", "whale", "dolphin", "dolphin", "dolphin", "dolphin", "goldfish", "goldfish", "goldfish", "goldfish", "shark", "shark", "shark", "shark", "sailfish", "sailfish", "sailfish", "sailfish"];



function Player(){
  this.flounder = 0;
  this.catfish = 0;
  this.sunfish = 0;
  this.angelfish = 0;
  this.flying_fish = 0;
  this.whale = 0;
  this.dolphin = 0;
  this.goldfish = 0;
  this.shark = 0;
  this.sailfish = 0;
  this.points = 0;
};

var player1 = new Player();
var player2 = new Player();


 function shuffle(array) {
  var m = array.length, t, i;
  // While there remain elements to shuffle...
  while (m) {
    // Pick a remaining element...
    i = Math.floor(Math.random() * m--);
    // And swap it with the current element.
    t = array[m];
    array[m] = array[i];
    array[i] = t;
  }
  return array;
}
shuffle(deck);
console.log(deck);


var player1arr = []; // Are these necessary to be accessed outside of deal function?
var player2arr = [];
var playerArr = [player1, player2]

function deal(deck, playerArr) {
  // shuffle()
  player1arr = deck.splice(0,5);
  player2arr = deck.splice(0,5);
}

deal(deck);
console.log(player1arr);
console.log(player2arr);
console.log(deck);

for (var i = 0; i < player1arr.length; i++) {
  player1[player1arr[i]] += 1;
}
// var player1 = {
//   flounder: 0,
//   catfish: 2,
//   sunfish: 0,
//   angelfish: 0,
//   flying_fish: 1,
//   whale: 0,
//   dolphin: 1,
//   goldfish: 0,
//   shark: 1,
//   sailfish: 4,
//   points: 0,
// }

// var player2 = {
//   flounder: 1,
//   catfish: 0,
//   sunfish: 2,
//   angelfish: 2,
//   flying_fish: 0,
//   whale: 0,
//   dolphin: 0,
//   goldfish: 0,
//   shark: 0,
//   sailfish: 0,
//   points: 0,
// }


function checkMatch(playerObject) {
  for (var property in playerObject) {
    if (playerObject[property] == 4) {
      console.log("Match!");
      playerObject[property] = 0;
      playerObject.points += 1;
    }
  };
  console.log(playerObject);
};

checkMatch(player1);

function display(playerObject) {
  console.log(playerObject);
}

function turn(player, opponent) {
  var question = prompt("opponent, do you have a ______? (type one of the following that you have in your hand: flounder, catfish, sunfish, angelfish, flying_fish, whale, dolphin, goldfish, shark, sailfish)")
   // if invalid question is a property
    if ( opponent[question] != 0) {
      console.log("It's a match!");
      opponent[question] -= 1;
      player[question] += 1;
      checkMatch(player);
    } else {
      console.log("Go fish!");
      goFish(deck, player);
      checkMatch(player);
    }
  };
};

function goFish(deck, player) {
  var card = deck.splice(0,1)[0]
  player[card] += 1;
}

function gameOver() {

}
