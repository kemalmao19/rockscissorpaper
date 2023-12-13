@react.component
let make = (~children) => {
  <div className="p-10 relative">
    <Header />
    <section> {children} </section>
    <RuleState.Provider><Rule /></RuleState.Provider>
  </div>
}
