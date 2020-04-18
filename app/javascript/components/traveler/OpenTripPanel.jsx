import React from 'react'
import { connect } from 'react-redux'
import PropTypes from 'prop-types'
import { Row } from 'reactstrap'

import SearchTrip from './SearchTrip'
import Trip from './Trip'

const propTypes = {
  trips: PropTypes.array.isRequired
}

const OpenTripPanel = (props) => {
  let { trips } = props
  return (
    <React.Fragment>
      <SearchTrip />

      <Row className='justify-content-start'>
        { trips.map(trip => <Trip key={trip.id} trip={trip} />) }
      </Row>
    </React.Fragment>
  )
}

const mapStateToProps = state => {
  let { trips } = state.traveler.openTrip
  return {
    trips
  }
}

const mapDispatchToProps = dispatch => {
  return {}
}

OpenTripPanel.propTypes = propTypes
export default connect(mapStateToProps, mapDispatchToProps)(OpenTripPanel)
