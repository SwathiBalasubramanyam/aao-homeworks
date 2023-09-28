import { useState, useEffect } from "react";

function NumbersDisplay(){
    let [count, setCount] = useState(0);
    const increment = () => {
        setCount(count + 1);
    }

    const decrement = () => {
        setCount(count - 1);
    }

    const reset = () =>{
        setCount(0);
    }

    useEffect(() => {
        console.log("Hello swathi");
    })

    return (
        <>
            <h1> Current Count: {count} </h1>
            <button onClick={increment}>+</button>
            <button onClick={decrement}>-</button>
            <button onClick={reset}>Reset!!</button>

        </>
    )
}

export default NumbersDisplay;