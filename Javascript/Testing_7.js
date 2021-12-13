function myFirstRecursion(num) {
    if (num < 1) {
        return [];
    } else {
        let arr = myFirstRecursion(num - 1);
        arr.unshift(num);
        return arr;
    }
}

//console.log(myFirstRecursion(5));

function rangeOfNumbers(startNum, endNum) {
    if (startNum > endNum || startNum < 1) {
        return [];
    } else {
        let arr = rangeOfNumbers(startNum + 1, endNum);
        arr.unshift(startNum);
        return arr;
    }
};

console.log(rangeOfNumbers(5, 10));