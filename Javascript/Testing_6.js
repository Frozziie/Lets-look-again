/* Built-ins & Functions & ... */

// NOTE: Use <console.log> if you want to visualize the results.

/* Math */
Math.random(); // return decimal value between 0 (included) to 1 (excluded).
Math.random() * 2; // you can extend the max value by multiplying for x value. 
Math.floor(Math.random()); // round to a complete number.

// Get a random decimal value in a range. I'll use variables to show this example.
let vMax = 5;
let vMin = 4;
Math.random() * ((vMax + vMin - 1) + vMin);

/* ------------------------------------- */

function convertToInteger(str) {
    return parseInt(str, 2);
  }
  
console.log(convertToInteger("10011"));