// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//       const x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//       var x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
//   function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
//   }


// function madLib(verb, adjective, noun) {
//     console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`);
// }

// madLib('make', 'best', 'guac')


// function isSubstring(searchString, subString) {

//     return searchString.includes(subString)
// }

// console.log(isSubstring("time to program", "time"));

// console.log(isSubstring("Jump for joy", "joys"));


// function fizzBuzz(array) {
//     let resArr = [];

//     array.forEach(el => {
//         if (((el % 3 == 0 ) || (el % 5 == 0)) && !(el % 3 == 0 && el % 5 == 0)) {
//             resArr.push(el);
//         }
//     });

//     return resArr;
// }

// console.log(fizzBuzz([1,2,3,4,5, 6]));


function isPrime(num) {

    if (num < 2) {
        return false;
    }

    for (i=2;i < num;i++) {
        if (num % i == 0) {
            return false;
        }
    }
    return true;
}


// console.log(isPrime(3548563));


function sumOfnPrimes(num) {
    let sum = 0;
    let i = 2;

    while (num != 0) {

        if (isPrime(i)) {
            sum += i;
            num -= 1;
        }
        i += 1;
    }

    return sum;

}

console.log(sumOfnPrimes(4));