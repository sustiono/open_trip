import React from 'react'
import PropTypes from 'prop-types'
import { Row } from 'reactstrap'

import SearchTrip from './SearchTrip'
import Trip from './Trip'

const propTypes = {
  openTrips: PropTypes.array.isRequired
}

const OpenTripPanel = (props) => {
  let { openTrips } = props
  return (
    <React.Fragment>
      <SearchTrip />

      <Row className='justify-content-start'>
        { openTrips.map(trip => <Trip trip={trip} />) }
      </Row>
    </React.Fragment>
  )
}

OpenTripPanel.propTypes = propTypes
export default OpenTripPanel
