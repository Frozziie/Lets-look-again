/* Global variables */
let globalArray = [1, 2, 3];
let globalElement = 4;

function insertAtEnd(arr, elem) {
    arr.push(elem);
    return "Insert at end: " + arr;
}

function insertAtStart(arr, elem) {
    arr.unshift(elem);
    return "Insert at start: " + arr;
}

function deleteAtEnd(arr) {
    arr.pop();
    return "Delete at end: " + arr;
}

function deleteAtStart(arr) {
    arr.shift();
    return "Delete at start: " + arr;
}

console.log(insertAtEnd(globalArray, globalElement));
console.log(insertAtStart(globalArray, globalElement));
console.log(deleteAtEnd(globalArray, globalElement));
console.log(deleteAtStart(globalArray, globalElement));