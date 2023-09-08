
// Phase 1
function titleize(namesArr, callback) {
    namesArr = namesArr.map((name) => {
        return name[0].toUpperCase() + name.slice(1)
    });

    namesArr.forEach(element => {
        callback(element)
    });
}

function printCallback(name) {
    console.log(`Mx. ${name} Jingleheimer Schmidt`);
}

titleize(["mary", "brian", "leo"], printCallback);

// Phase 2
class Elephant {
    constructor(name, height, tricks) {
        this.name = name;
        this.height = height;
        this.tricks = tricks;
    }

    static paradeHelper(elephant) {
        elephant.play();
    }

    trumpet() {
        console.log(`${this.name} goes phrRRRRRRRRRRR!!!!!!!'`);
    }
    grow() {
        this.height += 12;
    }
    addTrick(trick) {
        this.tricks.push(trick);
    }
    play() {
        let randomNum = Math.floor(Math.random() * (this.tricks.length - 1));
        console.log(`${this.name} is ${this.tricks[randomNum]}`);
    }
}





let ele1 = new Elephant("simba", 120, ["playing a trumpet"])
ele1.play()


// phase 3

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

herd.forEach((ele) => {
    Elephant.paradeHelper(ele);
})