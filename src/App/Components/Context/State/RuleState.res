type state = DisplayRule | HideRule

type action = Toggle

module Context = {
  include ReactContext.Make({
    type context = (state, action => unit)
    let defaultValue = (HideRule, _ => ())
  })
}

module Provider = {
  @react.component
  let make = (~children) => {
    let (state, dispatch) = React.useReducer((state, action) => {
      switch action {
      | Toggle =>
        switch state {
        | DisplayRule => HideRule
        | HideRule => DisplayRule
        }
      }
    }, HideRule)

    <Context.Provider value=(state, dispatch)> children </Context.Provider>
  }
}