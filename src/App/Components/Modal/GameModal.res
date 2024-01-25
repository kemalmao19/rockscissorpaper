let list_of_hand = ["lizard", "rock", "paper", "scissor", "spock"]

@scope("Math") @val external random: unit => float = "random"
@scope("Math") @val external floor: float => int = "floor"

let randomize = (list_of_hand->Js.Array.length->Belt.Int.toFloat *. random())->floor
let housePick = list_of_hand[randomize]
let setColorHouse = x =>
  switch x {
  | 0 => "border-lizard"
  | 1 => "border-rock"
  | 2 => "border-paper"
  | 3 => "border-scissor"
  | 4 => "border-spock"
  | _ => "border-0"
  }

let setColor = x =>
  switch x {
  | "lizard" => "border-lizard"
  | "rock" => "border-rock"
  | "paper" => "border-paper"
  | "scissor" => "border-scissor"
  | "spock" => "border-spock"
  | _ => "border-0"
}

@react.component
let make = (~pick) => {
  <div id="game" className={`grid grid-cols-2 my-10`}>
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
        className={`${setColorHouse(
            randomize,
          )} p-4 w-40 h-40 flex justify-center items-center bg-white rounded-full border-[16px] cursor-pointer hover:scale-110 trasnsition-all duration-300 ease-in-out`}>
        <img src={`/icon-${housePick->Option.getUnsafe}.svg`} />
      </section>
      <h2 className="text-white text-2xl"> {"THE HOUSE PICKED" |> React.string} </h2>
    </div>
  </div>
}
