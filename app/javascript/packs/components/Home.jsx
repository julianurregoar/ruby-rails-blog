import React, {useState} from "react";

export const Home = () => {
    const [tasks] = useState(['laundry', 'shopping']);
    return (
      <div>
        <h1>Tasks</h1>
        <ul>{tasks.map((task, index) => <li key={index}>{task}</li>)}</ul>
      </div>
    )
  }
