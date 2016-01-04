// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Get the most matches/points
// Goals: match like cards in your hand; match like cards from opponent's hand
// Characters: 2 players
// Objects: deck of cards, 2 players
// Functions: deal cards; identify two cards that match in hand; draw card from deck; ask other player for match; opponent checks hand; point counters; game over

// Pseudocode
// Create deck of cards collection, two of each card (object) deck
// Create player 1 and 2 (objects) player1 player2
//    - each property has a value of 0 to begin
// Initiate new game on deal (function) newGame
//    - players get 6 random cards from deck
// Display hand (function) displayHand
//    - display collection for player
// Check match to see if there are matches in hand (function) checkMatch
//    - if match, remove from hand
//        - add point for that player
//    - else do nothing
// Ask opponent if they have a certain card (function) askOpponent
//    - prompt user input
//    - if user input is equal to 1 in opponents hand
//        -prompt "It's a match!"
//        - remove card from each players' hand
//        - add point for player that received a match
//    - else
//        - prompt "Go fish!"
//        - player receives a new card from deck
//            - if matches card in deck
//                - remove from deck
//                - add point for player that recieved match
// Add points for matches (function within object?) pointCounter
//    - increase by 1 when there is a match
// Add new card from deck to player's hand (function) goFish
//    - select item from deck and add to hand
// Notify when game is over (function) gameOver
//    - when no cards left in deck, player1, or player2 hand
//    - prompt winner (player with most points)


// Initial Code
// another way to look at the deck
// var deck = {
//   flounder: 2,
//   catfish: 2,
//   sunfish: 2,
//   angelfish: 2,
//   flying_fish: 2,
//   whale: 2,
//   dolphin: 2,
//   goldfish: 2,
//   shark: 2,
//   sailfish: 2,
// }

// Create deck of cards collection, two of each card (object) deck
var deck = ["flounder", "flounder", "catfish", "catfish", "sunfish", "sunfish", "angelfish", "angelfish", "flying_fish", "flying_fish", "whale", "whale", "dolphin", "dolphin", "goldfish", "goldfish", "shark", "shark", "sailfish", "sailfish"];

// Create player 1 and 2 (objects) player1 player2
//    - each property has a value of 0 to begin
// var player1 = newObject();
// var player1 = {
//   "flounder": 0,
//   "catfish": 0,
//   "sunfish": 0,
//   "angelfish": 0,
//   "flying_fish": 0,
//   "whale": 0,
//   "dolphin": 0,
//   "goldfish": 0,
//   "shark": 0,
//   "sailfish": 0,
//   matches: 0,
// }

// var player2 = newObject();
// var player2 = {
//   "flounder": 0,
//   "catfish": 0,
//   "sunfish": 0,
//   "angelfish": 0,
//   "flying_fish": 0,
//   "whale": 0,
//   "dolphin": 0,
//   "goldfish": 0,
//   "shark": 0,
//   "sailfish": 0,
//   matches: 0,
// }

// Initiate new game on deal (function) newGame
// Input: list of cards
// Output: player objects (list of 5 cards each; like variable objects above-- "item": occurrance)
// Steps:
//    - shuffle deck (create function for that)
//    - players get 5 cards from deck (select from array, remove from array)
//    - cards go from array to player object, increasing value of property for 1 of each card that matches a property in player's hand
function shuffle(array) { // found this code to shuffle an array from https://www.frankmitchell.org/2015/01/fisher-yates/
  var i = 0
    , j= 0
    , temp = null
  for (i = array.length - 1; i > 0; i -= 1) {
    j = Math.floor(Math.random() * (i + 1))
    temp = array[i]
    array[i] = array[j]
    array[j] = temp
  }
}
shuffle(deck);
console.log(deck);
// console.log(deck); // prints same array as previous


// STUCK HERE -- trying to push 5 elements from deck array into player objects where the property is the card ("sunfish", "whale") and the value is the amount of occurances.
var player1 = {};
var player2 = {};
function toObject(array) {
  for (var i = 0; i < array.length; ++i)
    // player1[i] = array[i]; // this gives me an object, but the key/values are the reverse of how I need them
    // return player1

    // 5 times
    // grab item from array (will no longer be in original array) and make it a key with value of 1
    //   if item occurs more than once, increase value by 1
  return player1;
    // repeat to return player2
}

toObject(deck);
console.log(player1);

// function deal_p1(array) {
//   var array1 = array.pop(5)
//   console.log(array1)
// }

// deal_p1(deck);


// Display hand (function) displayHand
//    - display collection for player
function display(player) {
  console.log(player);
}

display(player1);
display(player2);

// Check match to see if there are matches in hand (function) checkMatch
// Input: array
// Output: if match, array with less items and added point to score
// Steps:
//    - if match, remove from hand
//        - add point for that player
//    - else do nothing
function checkMatch(player) {
  if

},

// Ask opponent if they have a certain card (function) askOpponent
// Input: string from opponent
// Output: "It's a match!" or "Go fish!"
// Steps:
//    - prompt user input
//    - if user input is equal to 1 in opponents hand
//        -prompt "It's a match!"
//        - remove card from each players' hand
//        - add point for player that received a match
//    - else
//        - prompt "Go fish!"
//        - player receives a new card from deck
//            - if matches card in deck
//                - remove from deck
//                - add point for player that recieved match

function askOpponent() {
  // select a card from deck, ask opponent if they have that card, if opponent doesn't have that card prompt goFish, if opponent does have that card, decrease count from each players' hands, and drawCard
}

// // Add points for matches (function within object?) pointCounter
// //    - increase by 1 when there is a match
function points() {

}

// // Add new card from deck to player's hand (function) goFish
// //    - select item from deck and add to hand
function goFish() {
  // for every value that is decreased, draw that amount from the deck, new cards must be added to appropriate key/value
},

// // Notify when game is over (function) gameOver
// //    - when no cards left in deck, player1, or player2 hand
// //    - prompt winner (player with most points)
function gameOver() {

}

// Refactored Code






// Reflection

// What was the most difficult part of this challenge?
//  - figuring out how to pull items from the array and move them into the object;
//  - haven't gotten beyond that yet

// What did you learn about creating objects and functions that interact with one another?
//  -
//  -


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//  -
//  -

// How can you access and manipulate properties of objects?
//  -
//  -
