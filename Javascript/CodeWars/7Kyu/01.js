/* Test for Isograms */

function isIsogram(str) {
    let arr = [];
    let state = undefined;
    str = str.toLowerCase();

    // If the passed argument is empty then it counts as an Isogram word.
    if (str == "") {
        return true;
    } else {
        // Go over string.
        for (let i = 0; i <= str.length-1; i++) {
            // Go over array.
            for (let j = 0; j <= arr.length-1; j++) {
                // Check if the actual string value already exists in the array.
                if (str[i] == arr[j]) {
                    // If exists then it means it's not an Isogram word.
                    return false;
                } else {
                    // If it doesn't exists then it's an Isogram word.
                    state = true;
                }
            }
            // Store string position value in array.
            arr.push(str[i]);
        }
        return state;
    }
}

console.log(isIsogram("Dermatoglyphics"));
console.log(isIsogram("isogram"));
console.log(isIsogram("aba"));
console.log(isIsogram("moOse"));
console.log(isIsogram("isIsogram"));
console.log(isIsogram(""));
