/* Calculator */

// Constant strings to display on the console for the result of our operations.
const title = "Operations";
const sumOperation = "(+)";
const substractOperation = "(-)";
const multiplieOperation = "(*)";
const divideOperation = "(/)";
const divisionRemainderOperation = "(%)";
const equalityOperation = "(=)";
const strictlyEqualOperation = "(Strictly =)";
const inequalityOperation = "(Not =)";
const strictlyNotEqualOperation = "(Strictly Not =)";
const greaterThan = "(>)";
const greaterThanOrEqualTo = "(>=)";

/* Basic Operations */

// This function sums 2 passed arguments and return the result.
function sumValues(num1, num2) {
    return num1 + num2;
}

// This function substract 2 passed arguments and return the result.
function substractValues(num1, num2) {
    return num1 - num2;
}

// This function multiplicate 2 passed arguments and return the result.
function multiplicateValues(num1, num2) {
    return num1 * num2;
}

// This function divides 2 passed arguments and return the result.
function divideValues(num1, num2) {
    return num1 / num2;
}

// This function returns the remainder of 2 divided values passed as arguments.
function dividedValuesRemainder(num1, num2) {
    return num1 % num2;
}

/* Intermediate Operations */

// This function compares the equality of 2 passed arguments.
function compareValuesEquality(num1, num2) { 
    if (num1 == num2) {
        return true;
    } else {
        return false;
    }
}

// This function strictly compares the equality of 2 passed arguments.
function strictlyCompareValuesEquality(num1, num2) {
    if (num1 === num2) {
        return true;
    } else {
        return false;
    }
}

// This function compares the inequality of 2 passed arguments.
function compareValuesInequality(num1, num2) {
    if (num1 != num2) {
        return true;
    } else {
        return false;
    }
}

// This function strictly compares the inequality of 2 passed arguments.
function strictlyCompareValuesInequality(num1, num2) {
    if (num1 !== num2) {
        return true;
    } else {
        return false;
    }
}

// This function tells me if the first argument is greater than the second argument and return a boolean.
function greaterThanNumber(num1, num2) {
    if (num1 > num2) {
        return true;
    } else {
        return false;
    }
}

// This function tells me if the first argument is greater than or equal to the second argument and return a boolean.
function greaterThanOrEqualNumber(num1, num2) {
    if (num1 >= num2) {
        return true;
    } else {
        return false;
    }
}

/* Display */

// Call and display the result of our operations functions.
console.log("\n" + title);
// Basic operations
console.log(sumOperation + ": " + sumValues(5, 10));
console.log(substractOperation + ": " + substractValues(5, 10));
console.log(multiplieOperation + ": " + multiplicateValues(5, 10));
console.log(divideOperation + ": " + divideValues(5, 10));
console.log(divisionRemainderOperation + ": " + dividedValuesRemainder(3, 2));
// Intermediate operations
console.log(equalityOperation + ": " + compareValuesEquality(2, "2"));
console.log(strictlyEqualOperation + ": " + strictlyCompareValuesEquality(2, "2"));
console.log(inequalityOperation + ": " + compareValuesInequality(2, "3"));
console.log(strictlyNotEqualOperation + ": " + strictlyCompareValuesInequality(2, "2"));
console.log(greaterThan + ": " + greaterThanNumber(2, "1"));
console.log(greaterThanOrEqualTo + ": " + greaterThanOrEqualNumber(2, "2"));