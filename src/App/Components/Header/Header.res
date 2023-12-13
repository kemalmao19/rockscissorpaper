@react.component
let make = () => {
  <div className="flex justify-between items-center p-4 border-header-outline border-4 rounded-3xl"> 
    <section className="text-white -space-y-3 text-lg">
      <h1> {React.string("ROCK")} </h1>
      <h1> {React.string("PAPER")} </h1>
      <h1> {React.string("SCISSORS")} </h1>
      <h1> {React.string("LIZARD")} </h1>
      <h1> {React.string("SPOCK")} </h1>
    </section>
    <section className="flex flex-col items-center bg-white py-3 px-10 rounded-xl">
      <p className="text-score-text">{React.string("Score")}</p>
      <h1 className="text-6xl text-dark-text">{React.string("01")}</h1>
    </section>
  </div>
}
