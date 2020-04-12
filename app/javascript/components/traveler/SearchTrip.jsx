import React from 'react'
import PropTypes from 'prop-types'
import { Col, Input } from 'reactstrap'


const propTypes = {}

const SearchTrip = props => {
  return (
    <Col className='mt-5 mb-4 p-0'>
      <Input type='text' placeholder='Find your destination' />
    </Col>
  )
}

SearchTrip.propTypes = propTypes
export default SearchTrip
