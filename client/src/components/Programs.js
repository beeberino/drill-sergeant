import React from 'react'
import axios from 'axios'

export default class Programs extends React.Component {
  state = { programs: [] }
  
  componentDidMount() {
    this.fetchPrograms()
  }

  fetchPrograms = async () => {
    const result = await axios('/api/workouts.json')
    result && this.setState({programs: result.data.programs})
  }

  render() {
    return (
      <div className="program-list">
        <ul>
          {this.state.programs.map(program => {
            return (
              <li key={program.objectID} id={"program-" + program.objectID}>
                {program.plan}
              </li>
            )
          })}
        </ul>
      </div>
    );
  }
}