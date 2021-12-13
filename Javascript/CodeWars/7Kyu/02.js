function accum(s) {
    let newString = "";
    s = s.toLowerCase();

    for (let i = 0; i < s.length; i++) {
        newString += s[i].toUpperCase();
        for (let j = 0; j < i; j++) {
            newString += s[i];
        }
        i < s.length-1 ? newString += "-" : false;
    }
    return newString;
}

console.log(accum("ZpglnRxqenU"));
console.log(accum("NyffsGeyylB"));
console.log(accum("MjtkuBovqrU"));
console.log(accum("EvidjUnokmM"));
console.log(accum("HbideVbxncC"));