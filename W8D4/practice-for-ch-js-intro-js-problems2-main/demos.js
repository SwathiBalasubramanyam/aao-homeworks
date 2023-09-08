// function calculator(operationCallback, num1, num2){

//     return operationCallback(num1, num2);
// }

// function add(x1, x2){
//     return x1 + x2
// }

// console.log(calculator(add, 2,3));


// function Cat(name, owner) {
//     this.name = name;
//     this.owner = owner;
// };

// Cat.prototype.cutestatement = function () {
//     return `${this.owner} loves ${this.name}. :)`;
// };

// Cat.prototype.meow = function () {
//     return "meow";
// };

// let c1 = new Cat("billy", "swathi");
// console.log(c1.cutestatement());

// class CatEs6 {
//     constructor(name, owner) {
//         this.name = name;
//         this.owner = owner;
//     }

//     cutestatement() {
//         return `${this.owner} loves ${this.name}. :)`;
//     }

//     static meow() {
//         return "meow";
//     }
// }

// let c2 = new CatEs6("silly", "priya");
// console.log(c2.cutestatement());

// function dinerBreakfast() {
//     let orders = [];
//     function addToOrder(order) {
//         orders.push(order);
//         console.log(`I'd like ${orders.join(' and ')} please.`);
//     }

//     return addToOrder;
// }

// let bfastOrder = dinerBreakfast();
// bfastOrder("cheesy scrambled eggs");

// bfastOrder("chocolate chip pancakes");

// bfastOrder("grits");


function Cat(name) {
    this.name = name;
}

Cat.prototype.meow = function() {
    console.log(`${this.name} says meow`);
}

biscuit = new Cat("biscuit");

function callMultipleTimes(cb, number){
    for(let i=0; i<number; i++){
        cb();
    }
}

callMultipleTimes(biscuit.meow.bind(biscuit), 5);

