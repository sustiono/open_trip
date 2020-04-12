import React from 'react'
import PropTypes from 'prop-types'
import {
  Col, Card, CardImg, CardBody, CardTitle, CardText, Button
} from 'reactstrap'

const propTypes = {
  trip: PropTypes.object.isRequired
}

const Trip = props => {
  let { trip } = props
  return (
    <Col md={4}>
      <Card className='mb-4'>
        <CardImg top src='https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/330px-Image_created_with_a_mobile_phone.png' alt='trip' />
        <CardBody>
          <CardTitle>{trip.destination}</CardTitle>
          <CardText>Some quick example text to build on the card title and make up the bulk of the card's content.</CardText>
          <Col className='text-right p-0'>
            <Button color='primary'>View Detail</Button>
          </Col>
        </CardBody>
      </Card>
    </Col>
  )
}

Trip.propTypes = propTypes
export default Trip
