import React, { useEffect, useState } from "react";
import axios from "axios";
import Wizard from "./Wizard";

const Wizards = (props) => {
  const [wizards, setWizards] = useState([]);
  // empty array will make use effect run only on mount (intial render)
  useEffect(() => {
    console.log("Wizard component mounting");
    getWizards();

    return () => {
      // eventlistners, timers we want to remove/stop
      console.log("Wizard component unmounting");
    };
  }, []);

  const getWizards = async () => {
    try {
      let res = await axios.get("/api/Wizards");
      setWizards(res.data);
      // console.log(res);
      console.log("Wizards here in res.data:", res.data);
    } catch (error) {
      alert("err occured getting wizard check conosle/server");
      console.log(error);
    }
  };
  const updateWizard = (wizard) => {
    let updatedWizards = wizards.map((w) => (w.id == wizard.id ? wizard : w));
    setWizards(updatedWizards);
  };

  const renderWizards = () => {
    return wizards.map((w) => <Wizard updateWizard={updateWizard} key={w.id} {...w} />);
  };
  return (
    <div>
      <h1>Wizards</h1>
      <div>{renderWizards()}</div>
    </div>
  );
};

export default Wizards;