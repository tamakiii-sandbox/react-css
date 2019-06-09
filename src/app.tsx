import * as React from "react";
import * as ReactDOM from "react-dom";
import Bootstrap from "./bootstrap";

const App = () => (
  <section>
    <h1>React CSS</h1>
    <Bootstrap></Bootstrap>
  </section>
)

ReactDOM.render(
  <App />,
  document.querySelector("#root"),
)