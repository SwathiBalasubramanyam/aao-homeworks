
function titleize(namesArr, callback) {
    namesArr.map((name => {
        return (name[0].toUpperCase() + name.slice(1))
    }))

    console.log(namesArr);

    namesArr.forEach(element => {
        callback(element)
    });
}

function printCallback(name) {
    console.log(`Mx. ${name} Jingleheimer Schmidt`);
}

titleize(["mary", "brian", "leo"], printCallback);