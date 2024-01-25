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
let make = (~pick) => {

  let winner = play(pick |> winType, housePick->Option.getUnsafe |> winType)
  let res = setTimeout(() => gameStatus(winner), 2000)

  let handleClose = (e:JsxEvent.Mouse.t) => {
    if (%raw("e.target !== e.currentTarget")) {
      ()
    }
    Js.log("helo")
  };

  <div id="game" className={`grid grid-cols-2 my-10`} onClick={(e) => handleClose(e)}>
    <div className="flex flex-col items-center gap-4">
      <section
        className={`${setColor(
            pick,
          )} p-4 w-40 h-40 flex justify-center items-center bg-white rounded-full border-[16px] cursor-pointer hover:scale-110 trasnsition-all duration-300 ease-in-out`}>
        <img src={`/icon-${pick}.svg`} />
      </section>
      <h2 className="text-white text-2xl"> {"YOU PICKED" |> React.string} </h2>
    </div>
    <div className="flex flex-col items-center gap-4">
      <section
        className={`${setColor(
            housePick->Option.getUnsafe,
          )} p-4 w-40 h-40 flex justify-center items-center bg-white rounded-full border-[16px] cursor-pointer hover:scale-110 trasnsition-all duration-300 ease-in-out`}>
        <img src={`/icon-${housePick->Option.getUnsafe}.svg`} />
      </section>
      <h2 className="text-white text-2xl"> {"THE HOUSE PICKED" |> React.string} </h2>
    </div>
  </div>
}
