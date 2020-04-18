import { camelizeKeys } from 'humps'

import types from '../../../constantas/types'

export const onStoreOpenTrips = trips => {
  return {
    trips,
    type: types.TRAVELER.OPEN_TRIP.ON_STORE_OPEN_TRIPS
  }
}

export const onChangeSearchKeyword = searchKeyword => {
  return {
    searchKeyword,
    type: types.TRAVELER.OPEN_TRIP.ON_CHANGE_SEARCH_KEYWORD
  }
}

export const onSeacrhTrip = () => {
  return async (dispatch, getState) => {
    try {
      let state = getState()
      let { searchKeyword: q } = state.traveler.openTrip
      let response = await fetch(`/open_trips.json?q=${q}`)
      let responseJson = await response.json()
      let trips = camelizeKeys(responseJson)
      dispatch(onStoreOpenTrips(trips))
    } catch (e) {
      console.log('Error: ', e);
    }
  }
}
