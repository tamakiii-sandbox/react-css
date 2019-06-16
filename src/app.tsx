import "normalize.css";
import * as React from "react";
import * as ReactDOM from "react-dom";
import Header from "./components/header";

const App = () => (
  <>
    <Header></Header>
    <h1>Test</h1>
    <p>hello</p>
  </>
)

ReactDOM.render(
  <App />,
  document.querySelector("#root"),
)