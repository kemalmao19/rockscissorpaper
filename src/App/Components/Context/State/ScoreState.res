type action =  | Pause | Increment | Decrement

module Context = {
  include ReactContext.Make({
    type context = (int, action => unit)
    let defaultValue = (0, _ => ())
  })
}

module Provider = {
  @react.component
  let make = (~children) => {
    let (state, dispatch) = React.useReducer((state, action) => {
      switch action {
      | Increment => state + 1
      | Decrement => state - 1
      | Pause => state
      }
    }, 0)

    <Context.Provider value=(state, dispatch)> children </Context.Provider>
  }
}