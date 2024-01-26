open Game

let list_of_button = [Lizard, Rock, Paper, Scissor, Spock]

let selectIcon = icon =>
  switch icon {
  | Lizard => "lizard"
  | Rock => "rock"
  | Paper => "paper"
  | Scissor => "scissor"
  | Spock => "spock"
  }

let position = idx =>
  switch idx {
  | 0 => "border-lizard -top-1"
  | 1 => "border-rock top-[70px] -right-6"
  | 2 => "border-paper -bottom-3 right-4"
  | 3 => "border-scissor -bottom-3 left-4"
  | 4 => "border-spock top-[70px] -left-6"
  | _ => "top-0"
  }

@react.component
let make = () => {
  let (pick, setPick) = React.useState(() => "")
  let (openGame, setOpenGame) = React.useState(() => false)

  let handleClick = x => {
    setPick(_ => selectIcon(x))
    setOpenGame(_ => true)
  }

  <>
    {!openGame
      ? <div className="flex justify-center items-center">
          {<div
            className="relative flex justify-center items-center bg-pentagon w-[330px] h-[310px]">
            {list_of_button
            ->Belt.Array.mapWithIndex((i, x) => {
              <div
                onClick={_ => handleClick(x)}
                key={i->Belt.Int.toString}
                className={`absolute p-4 w-24 h-24 flex justify-center items-center bg-white rounded-full border-8 cursor-pointer hover:scale-110 trasnsition-all duration-300 ease-in-out ${position(
                    i,
                  )}`}>
                <img src={`/icon-${selectIcon(x)}.svg`} />
              </div>
            })
            ->React.array}
          </div>}
        </div>
      : <GameModal pick={pick} setOpen={setOpenGame} />}
  </>
}
