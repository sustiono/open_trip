const logger = store => next => action => {
  if (process.env.NODE_ENV == 'development') {
    console.group(action.type)
    console.info('dispatching', action)
    let result = next(action)
    console.log('next state', store.getState())
    console.groupEnd()
    return result
  } else {
    let result = next(action)
    return result
  }
}

export default logger
