import "./App.css";
import Wizards from "./components/Wizards";
import NavBar from "./components/Navbar";
import { Switch, Route } from "react-router-dom";
import Home from "./components/Home";

function App() {
  return (
    <div className="App">
      <NavBar />
      <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/wizards" component={Wizards} />
        <Route component={() => <h1>Not found</h1>} />
      </Switch>
    </div>
  );
}

export default App;