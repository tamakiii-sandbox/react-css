import "normalize.css";
import * as React from "react";
import * as ReactDOM from "react-dom";

const App = () => (
  <section>
    <h1>Test</h1>
    <p>hello</p>
  </section>
)

ReactDOM.render(
  <App />,
  document.querySelector("#root"),
)