@react.component
let make = () => {
  let (state, dispatch) = RuleState.Context.use()
  <div className="flex flex-col items-center lg:items-end">
    <div
      id="rules"
      className={` z-50 bg-white py-20 lg:py-10 px-10 absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-screen lg:w-1/2 lg:h-3/4 h-screen flex flex-col justify-between items-center lg:gap-6 ${state ===
          HideRule
          ? "hidden"
          : ""}`}>
      <h1 className="text-dark-text text-2xl"> {React.string("RULES")} </h1>
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
      className="inline-block border-header-outline border-4 py-2 px-10 rounded-xl text-white hover:bg-white hover:text-dark-text cursor-pointer trasnsition-all duration-300 ease-in-out">
      {React.string("RULES")}
    </div>
  </div>
}
