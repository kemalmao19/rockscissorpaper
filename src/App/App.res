open Game
let list_of_button: array<string> = ["lizard", "rock", "paper", "scissors", "spock"]
let position = idx =>
  switch idx {
  | 0 => "-top-1"
  | 1 => "top-[70px] -right-6"
  | 2 => "-bottom-3 right-4"
  | 3 => "-bottom-3 left-4"
  | 4 => "top-[70px] -left-6"
  | _ => "top-0"
  }

@react.component
let make = () => {
  let (pick, setPick) = React.useState(() => Rock)

  let handleClick = i => {
    setPick(_ => pickHand(i))
  }

  Js.log(pick)
  <Layout>
    <div className="flex justify-center items-center">
      {<div className="relative flex justify-center items-center bg-pentagon w-[330px] h-[310px]">
        {list_of_button
        ->Belt.Array.mapWithIndex((i, x) => {
          <div
            onClick={_ => handleClick(i)}
            key={i->Belt.Int.toString}
            className={`${Lib.buttonStyle} border-${x} ${position(i)}`}>
            <img src={`/icon-${x}.svg`} />
          </div>
        })
        ->React.array}
      </div>}
    </div>
  </Layout>
}
