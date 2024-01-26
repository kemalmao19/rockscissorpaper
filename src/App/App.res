@react.component
let make = () => {
  <div className="p-10 relative flex flex-col gap-10 justify-center">
    
      <Header />
      <GameSection />
    <RuleState.Provider>
      <Rule />
    </RuleState.Provider>
  </div>
}
