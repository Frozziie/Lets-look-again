function findSmallestInt(arr) {
    var minObject = arr[0];
    for (let index = 0; index < arr.length; index++) {
        if (arr[index] < minObject) {
            minObject = arr[index];
        }
    }
    return minObject;
}

console.log(findSmallestInt([78,56,232,12,8]));
console.log(findSmallestInt([78,56,232,12,18]));
console.log(findSmallestInt([78,56,232,412,228]));
console.log(findSmallestInt([78,56,232,12,0]));
console.log(findSmallestInt([1,56,232,12,8]));