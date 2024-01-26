@react.component
let make = (~children) => {
  
  <div className="p-10 relative flex flex-col gap-10 justify-center">
    <ScoreState.Provider><Header /></ScoreState.Provider>
    <section> {children} </section>
    <RuleState.Provider>
      <Rule />
    </RuleState.Provider>
  </div>
}
