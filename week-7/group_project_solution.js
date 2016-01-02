// Release 3: Pseudocode to Code
// Katie Meyer

function sum(arr_nums) {
  var total = 0;
  for (var i in arr_nums) {
    total += arr_nums[i];
  }
  console.log(total);
}


function mean(arr_nums) {
  var total = 0;
  for (var i in arr_nums) {
    total += arr_nums[i];
  }
  console.log(total / arr_nums.length);
}


function median(arr_nums) {
  var new_arr = arr_nums.sort(function(a,b) {
    return a - b;
  });
  var middle = Math.floor((new_arr.length - 1) / 2);
  if (new_arr.length % 2 != 0) {
    console.log(new_arr[middle]);
  }  else {
    console.log((new_arr[middle] + new_arr[middle + 1]) / 2);
  }
}


sum([1, 2, 3, 4, 5])  // 15
mean([5, 5, 3, 4, 5])  // 4.4
median([4, 2, 3, 1, 5]) //3
median([1, 2, 3, 4, 5]) // 3
median([1, 2, 3, 4, 5, 6]) // 3.5



// This below can be excluded from final group submission. I had to research a lot for the median function. I didn't fully understand the code I was finding at first. As I figured it out, I explained what each does to understand it better.

function median(arr_nums) {
  var new_arr = arr_nums.sort(function(a,b) {
    return a - b;
  });
  var middle = Math.floor((new_arr.length - 1) / 2); // var middle is the index of the middle number in array or the lower index of the two middle numbers when even amount; Math.floor rounds down which helps for the else statement
  if (new_arr.length % 2 != 0) {
    console.log(new_arr[middle]); // access value with index
  }  else {
    console.log((new_arr[middle] + new_arr[middle + 1]) / 2); // access value with index and the next one, sum and divide by 2
  }
}
