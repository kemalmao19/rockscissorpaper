type hand =
  | Rock
  | Paper
  | Scissor
  | Lizard
  | Spock

type game = Win | Draw | Lose

let play = (player, comp) =>
  switch (player, comp) {
  | (Scissor, Paper | Lizard)
  | (Paper, Rock | Spock)
  | (Rock, Lizard | Scissor)
  | (Lizard, Spock | Paper)
  | (Spock, Scissor | Rock)
  => Win
  | (Paper | Lizard, Scissor)
  | (Rock | Spock, Paper)
  | (Lizard | Scissor, Rock)
  | (Spock | Paper, Lizard)
  | (Scissor | Rock, Spock)
  => Lose
  | (Scissor, Scissor) 
  | (Paper, Paper) 
  | (Rock, Rock) 
  | (Lizard, Lizard) 
  | (Spock, Spock) 
  => Draw
  }

  let a = Rock
  let b = Paper

  let gameStatus = (p) => switch p {
    | Win => Js.log("menang")
    | Lose => Js.log("kalah")
    | Draw => Js.log("draw")
  } 

let pickHand = (idx) => switch idx {
  | 0 => Lizard
  | 1 => Rock
  | 2 => Paper
  | 3 => Scissor
  | 4 => Scissor
  | _ => Spock
}