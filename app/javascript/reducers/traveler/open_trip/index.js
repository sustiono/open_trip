import types from '../../../constantas/types'

let defaultState = {
  trips: [],
  searchKeyword: ''
}
let newState
const openTrip = (state = defaultState, action) => {
  switch (action.type) {
    case types.TRAVELER.OPEN_TRIP.ON_STORE_OPEN_TRIPS:
      newState = { ...state, trips: action.trips }
      return newState
    case types.TRAVELER.OPEN_TRIP.ON_CHANGE_SEARCH_KEYWORD:
      newState = { ...state, searchKeyword: action.searchKeyword }
      return newState
    default:
      return defaultState
  }
}

export default openTrip
