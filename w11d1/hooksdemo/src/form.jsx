import { useState } from "react";

function Form(props) {
    const [user, setUser] = useState({
        firstName: "",
        lastName: "",
        email: "",
        password: ""
    });

    const [errors, setErrors] = useState([]);

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log(user);
    }

    return (
        <>
            <form className="form" onSubmit={handleSubmit}>
              <h4>Sign Up</h4> 
              <input type="text" placeholder="First Name" value={user.firstName} onChange={(e) => setUser({...user, firstName: e.currentTarget.value})}></input> 
              <input type="text" placeholder="Last Name" value={user.lastName} onChange={(e) => setUser({...user, lastName: e.currentTarget.value})}></input> 
              <input type="text" placeholder="Email" value={user.email} onChange={(e) => setUser({...user, email: e.currentTarget.value})}></input> 
              <input type="password" placeholder="Password" value={user.password} onChange={(e) => setUser({...user, password: e.currentTarget.value})}></input> 
              <button>Create User</button>
            </form>
        </>
    )
}

export default Form;