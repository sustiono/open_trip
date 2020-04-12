import types from '../../../constantas/types'

let defaultState = {
  openTrips: []
}
let newState
const traveler = (state = {
  outlet: {},
  dateType: 'custom',
  transactions: [],
  isFiltering: false,
  showPreview: false,
  page: 0,
  totalData: 0
}, action) => {
  switch (action.type) {
    case types.TRAVELER.OPEN_TRIP.ON_STORE_OPEN_TRIPS:
      newState = { ...state, openTrips: action.openTrips }
      return newState
    default:
      return defaultState
  }
}

export default traveler
