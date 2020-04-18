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
      console.log('search');
    } catch (e) {

    } finally {

    }
  }
}
