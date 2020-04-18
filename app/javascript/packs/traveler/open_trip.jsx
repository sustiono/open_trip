import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { createStore, applyMiddleware } from 'redux'
import thunk from 'redux-thunk'
import { camelizeKeys } from 'humps'

import logger from '../../middlewares/logger'
import rootReducer from '../../reducers'
import { onStoreOpenTrips } from '../../actions/traveler/open_trip'

import OpenTripPanel from '../../components/traveler/OpenTripPanel'

const store = createStore(rootReducer, applyMiddleware(thunk, logger))
const node = document.getElementById('open_trip_panel')
document.addEventListener('DOMContentLoaded', () => {
  const trips = JSON.parse(node.getAttribute('open_trips'))
  store.dispatch(onStoreOpenTrips(trips))
  ReactDOM.render(
    <Provider store={store}>
      <OpenTripPanel trips={trips} />
    </Provider>, node
  )
})
