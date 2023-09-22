import React from "react";

function Showcase(){
    let favPokeman = "Bulbasur";
    let pokeCharacteristics = {type: "Grass", move: "vine Whip"}
    return (
        <div>
            <h1>Showcase Component {favPokeman}'s</h1>
            <h2>{favPokeman}'s type is {pokeCharacteristics.type} and one of their moves is {pokeCharacteristics.move}</h2>
        </div>
    );
}

export default Showcase;