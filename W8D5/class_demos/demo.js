// class Dog {
//     constructor (name) {
//         this.name = name;

//     }

//     greet () {
//         console.log(`my name is ${this.name}`);
//     }
// }

// let dog1 = new Dog("Remy");
// // dog1.greet();

// Function.prototype.myBind = function(ctx) {
//     let that = this;
//     return function(){
//         that.apply(ctx);
//     }
// }

// setTimeout(dog1.greet.myBind(dog1), 1000)

function boringAdd(n1, n2, n3){
    return n1+ n2+ n3;
}

// console.log(boringAdd(1,2,3));

function addThreeNums(n1) {
    return function(n2) {
        return function(n3){
            return n1 + n2 + n3;
        }
    }
}

// console.log(addThreeNums(1)(2)(3));


// function continuousAdd() {
//     const nums = [];
//     return function _curriedAdd(num){
//         nums.push(num);
//         total_sum = nums.reduce(function(acc, el){
//             return acc + el;
//         });
//         console.log(nums);
//         console.log(total_sum);
//     }

// }

// let calculator = continuousAdd()
// calculator(2)
// calculator(3)


function Cat(name, personality) {
    this.name = name;
    this.personality = personality;
}



let cat = new Cat("Fido", "meows")