import { useState } from "react";
import NumbersDisplay from "./numberDisplay";
import StudentIndex from "./studentIndex";
import StudentShow from "./studentShow";
import { Switch, Route } from "react-router-dom";
import Form from "./form";

function App() {

  return (
    <>
      {/* <h1>Hello from App</h1>
      <NumbersDisplay></NumbersDisplay> */}
      {/* <StudentIndex></StudentIndex>
      <Switch>
        <Route path="/students/:studentName" component={StudentShow}></Route>
      </Switch> */}
      <Form></Form>

    </>
  );
}

export default App;
