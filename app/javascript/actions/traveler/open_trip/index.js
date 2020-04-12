import types from '../../../constantas/types'

export const onStoreOpenTrips = openTrips => {
  return {
    openTrips,
    type: types.TRAVELER.OPEN_TRIP.ON_STORE_OPEN_TRIPS
  }
}
