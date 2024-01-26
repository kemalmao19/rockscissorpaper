open Game

let list_of_hand = ["lizard", "rock", "paper", "scissor", "spock"]

let randomize = (list_of_hand->Js.Array.length->Belt.Int.toFloat *. random())->floor
let housePick = list_of_hand[randomize]

let setColor = x =>
  switch x {
  | "lizard" => "border-lizard"
  | "rock" => "border-rock"
  | "paper" => "border-paper"
  | "scissor" => "border-scissor"
  | "spock" => "border-spock"
  | _ => "border-0"
  }

let winType = x =>
  switch x {
  | "lizard" => Lizard
  | "rock" => Rock
  | "paper" => Paper
  | "scissor" => Scissor
  | "spock" => Spock
  }

@react.component
let make = (~pick, ~setOpen) => {
  let (isLoading, setIsLoading) = React.useState(() => true)
  let (state, dispatch) = ScoreState.Context.use()
  let (scoreUpdated, setScoreUpdated) = React.useState(() => true)

  let winner = play(pick |> winType, housePick->Option.getUnsafe |> winType)

  let gameStatus = p =>
    switch p {
    | Win => React.string("YOU WIN")
    | Lose => React.string("YOU LOSE")
    | Draw => React.string("DRAW")
    }

  React.useEffect1(() => {
    let _ = setTimeout(() => {
      setIsLoading(_ => false)
      setScoreUpdated(_ => false) // Reset the scoreUpdated flag
    }, 2000)
    None
  }, [])

  React.useEffect2(() => {
    let scoreWin = x =>
      switch x {
      | Win =>
        if !scoreUpdated && !isLoading {
          dispatch(Increment)
          setScoreUpdated(_ => true)
        }
      | Lose =>
        if !scoreUpdated && !isLoading {
          dispatch(Decrement)
          setScoreUpdated(_ => true)
        }
      | Draw => ()
      }

    let _ = setTimeout(() => scoreWin(winner), 2000)
    None
  }, ([winner], [scoreUpdated]))

  <>
    <div id="game" className={`grid grid-cols-2`}>
      <div className="flex flex-col items-center gap-4">
        <section
          className={`${setColor(
              pick,
            )} p-4 w-40 h-40 flex justify-center items-center bg-white rounded-full border-[16px]`}>
          <img src={`/icon-${pick}.svg`} />
        </section>
        <h2 className="text-white text-2xl"> {"YOU PICKED" |> React.string} </h2>
      </div>
      <div className="flex flex-col items-center gap-4">
        {!isLoading
          ? <section
              className={`${setColor(
                  housePick->Option.getUnsafe,
                )} p-4 w-40 h-40 flex justify-center items-center bg-white rounded-full border-[16px]`}>
              <img src={`/icon-${housePick->Option.getUnsafe}.svg`} />
            </section>
          : <section
              className={`p-4 w-40 h-40 flex justify-center items-center bg-dark-text rounded-full`}>
              <img src={`/logo.svg`} />
            </section>}
        <h2 className="text-white text-2xl text-center">
          {!isLoading ? "THE HOUSE PICKED" |> React.string : "WAIT..." |> React.string}
        </h2>
      </div>
    </div>
    {!isLoading
      ? <div className="flex flex-col justify-center items-center mt-12 gap-4 w-3/4 mx-auto">
          <div className="text-white text-6xl text-center"> {gameStatus(winner)} </div>
          <button
            onClick={_ => setOpen(_ => false)}
            className="p-4 w-full flex justify-center items-center bg-white rounded-lg hover:scale-110 trasnsition-all duration-300 ease-in-out">
            <h2 className="text-dark-text text-2xl"> {"PLAY AGAIN" |> React.string} </h2>
          </button>
        </div>
      : <> </>}
  </>
}
