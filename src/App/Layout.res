@react.component
let make = (~children) => {
  let (score, setScore) = React.useState(() => 0)
  <div className="p-10 relative flex flex-col gap-10 justify-center">
    <Header score />
    <section> {children} </section>
    <RuleState.Provider>
      <Rule />
    </RuleState.Provider>
  </div>
}
