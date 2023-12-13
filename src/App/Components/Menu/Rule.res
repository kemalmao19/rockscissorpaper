@react.component
let make = () => {
  let (state, dispatch) = RuleState.Context.use()
  <div className="flex flex-col items-center lg:items-end">
    <div
      id="rules"
      className={`fixed z-50 bg-white py-20 px-10 top-0 left-0 w-screen h-screen flex flex-col justify-between items-center ${state === HideRule
          ? "hidden"
          : ""}`}>
      <section className="flex justify-between items-center">
        <h1 className="text-dark-text text-xl"> {React.string("RULES")} </h1>

      </section>
      <section className="flex justify-center items-center">
        <img src="/image-rules-bonus.svg" />
      </section>
              {state === DisplayRule
          ? <div className="text-dark-text text-xl cursor-pointer" onClick={_ => dispatch(Toggle)}>
              <img src="/icon-close.svg" />
            </div>
          : <> </>}
    </div>
    <div
      onClick={_ => dispatch(Toggle)}
      className="inline-block border-header-outline border-4 py-2 px-10 rounded-xl text-white hover:bg-white hover:text-dark-text cursor-pointer">
      {React.string("RULES")}
    </div>
  </div>
}
