import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { createStore, applyMiddleware } from 'redux'
import thunk from 'redux-thunk'
import { camelizeKeys } from 'humps'

import logger from '../../middlewares/logger'
import rootReducer from '../../reducers/traveler'
import { onStoreOpenTrips } from '../../actions/traveler/open_trip'

import OpenTripPanel from '../../components/traveler/OpenTripPanel'

const store = createStore(rootReducer, applyMiddleware(thunk, logger))
const node = document.getElementById('open_trip_panel')
document.addEventListener('DOMContentLoaded', () => {
  const openTrips = JSON.parse(node.getAttribute('open_trips'))
  store.dispatch(onStoreOpenTrips(openTrips))
  ReactDOM.render(
    <Provider store={store}>
      <OpenTripPanel openTrips={openTrips} />
    </Provider>, node
  )
})
