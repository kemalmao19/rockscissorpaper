// Generated by ReScript, PLEASE EDIT WITH CARE


function play(player, comp) {
  var exit = 0;
  switch (player) {
    case /* Rock */0 :
        switch (comp) {
          case /* Rock */0 :
              return /* Draw */1;
          case /* Scissor */2 :
          case /* Lizard */3 :
              return /* Win */0;
          case /* Paper */1 :
          case /* Spock */4 :
              exit = 3;
              break;
          
        }
        break;
    case /* Paper */1 :
        switch (comp) {
          case /* Paper */1 :
              return /* Draw */1;
          case /* Scissor */2 :
          case /* Lizard */3 :
              exit = 2;
              break;
          case /* Rock */0 :
          case /* Spock */4 :
              return /* Win */0;
          
        }
        break;
    case /* Scissor */2 :
        switch (comp) {
          case /* Rock */0 :
              break;
          case /* Scissor */2 :
              return /* Draw */1;
          case /* Paper */1 :
          case /* Lizard */3 :
              return /* Win */0;
          case /* Spock */4 :
              return /* Lose */2;
          
        }
        break;
    case /* Lizard */3 :
        switch (comp) {
          case /* Rock */0 :
          case /* Scissor */2 :
              exit = 2;
              break;
          case /* Lizard */3 :
              return /* Draw */1;
          case /* Paper */1 :
          case /* Spock */4 :
              return /* Win */0;
          
        }
        break;
    case /* Spock */4 :
        switch (comp) {
          case /* Rock */0 :
          case /* Scissor */2 :
              return /* Win */0;
          case /* Paper */1 :
          case /* Lizard */3 :
              exit = 3;
              break;
          case /* Spock */4 :
              return /* Draw */1;
          
        }
        break;
    
  }
  switch (exit) {
    case 2 :
        if (comp === 2) {
          return /* Lose */2;
        }
        break;
    case 3 :
        if (comp !== 3) {
          return /* Lose */2;
        }
        break;
    
  }
  return /* Lose */2;
}

function gameStatus(p) {
  switch (p) {
    case /* Win */0 :
        console.log("menang");
        return ;
    case /* Draw */1 :
        console.log("draw");
        return ;
    case /* Lose */2 :
        console.log("kalah");
        return ;
    
  }
}

var a = /* Rock */0;

var b = /* Paper */1;

export {
  play ,
  a ,
  b ,
  gameStatus ,
}
/* No side effect */