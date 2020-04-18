import React from 'react'
import PropTypes from 'prop-types'
import { connect } from 'react-redux'
import { Col, Input } from 'reactstrap'
import {
  onChangeSearchKeyword, onSeacrhTrip
} from '../../actions/traveler/open_trip'


const propTypes = {
  searchKeyword: PropTypes.string,
  onChangeSearchKeyword: PropTypes.func.isRequired
}

const defaultProps = {
  searchKeyword: ''
}

const SearchTrip = props => {
  let { searchKeyword, onChangeSearchKeyword, onSeacrhTrip } = props
  return (
    <Col className='mt-5 mb-4 p-0'>
      <Input
        type='text'
        value={searchKeyword}
        placeholder='Find your destination'
        onKeyDown={e => e.keyCode == '13' && onSeacrhTrip()}
        onChange={e => onChangeSearchKeyword(e.target.value)}
      />
    </Col>
  )
}

const mapStateToProps = state => {
  let { searchKeyword } = state.traveler
  return {
    searchKeyword
  }
}

const mapDispatchToProps = dispatch => {
  return {
    onSeacrhTrip: () => dispatch(onSeacrhTrip()),
    onChangeSearchKeyword: searchKeyword => {
      return dispatch(onChangeSearchKeyword(searchKeyword))
    }
  }
}

SearchTrip.propTypes = propTypes
SearchTrip.defaultProps = defaultProps
export default connect(mapStateToProps, mapDispatchToProps)(SearchTrip)
