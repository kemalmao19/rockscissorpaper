@scope("Math") @val external random: unit => float = "random"
@scope("Math") @val external floor: float => int = "floor"

type timerId
@val external setTimeout: (unit => unit, int) => timerId = "setTimeout"
@val external clearTimeout: timerId => unit = "clearTimeout"

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
