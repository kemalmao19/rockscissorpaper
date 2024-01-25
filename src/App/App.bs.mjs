// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Layout from "./Layout.bs.mjs";
import * as GameModal from "./Components/Modal/GameModal.bs.mjs";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as JsxRuntime from "react/jsx-runtime";

var list_of_button = [
  /* Lizard */3,
  /* Rock */0,
  /* Paper */1,
  /* Scissor */2,
  /* Spock */4
];

function selectIcon(icon) {
  switch (icon) {
    case /* Rock */0 :
        return "rock";
    case /* Paper */1 :
        return "paper";
    case /* Scissor */2 :
        return "scissor";
    case /* Lizard */3 :
        return "lizard";
    case /* Spock */4 :
        return "spock";
    
  }
}

function position(idx) {
  switch (idx) {
    case 0 :
        return "border-lizard -top-1";
    case 1 :
        return "border-rock top-[70px] -right-6";
    case 2 :
        return "border-paper -bottom-3 right-4";
    case 3 :
        return "border-scissor -bottom-3 left-4";
    case 4 :
        return "border-spock top-[70px] -left-6";
    default:
      return "top-0";
  }
}

function App(props) {
  var match = React.useState(function () {
        return "";
      });
  var setPick = match[1];
  var match$1 = React.useState(function () {
        return false;
      });
  var setOpenGame = match$1[1];
  return JsxRuntime.jsx(Layout.make, {
              children: match$1[0] ? JsxRuntime.jsx(GameModal.make, {
                      pick: match[0]
                    }) : JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsx("div", {
                            children: Belt_Array.mapWithIndex(list_of_button, (function (i, x) {
                                    return JsxRuntime.jsx("div", {
                                                children: JsxRuntime.jsx("img", {
                                                      src: "/icon-" + selectIcon(x) + ".svg"
                                                    }),
                                                className: "absolute p-4 w-24 h-24 flex justify-center items-center bg-white rounded-full border-8 cursor-pointer hover:scale-110 trasnsition-all duration-300 ease-in-out " + position(i) + "",
                                                onClick: (function (param) {
                                                    Curry._1(setPick, (function (param) {
                                                            return selectIcon(x);
                                                          }));
                                                    Curry._1(setOpenGame, (function (param) {
                                                            return true;
                                                          }));
                                                  })
                                              }, String(i));
                                  })),
                            className: "relative flex justify-center items-center bg-pentagon w-[330px] h-[310px]"
                          }),
                      className: "flex justify-center items-center"
                    })
            });
}

var make = App;

export {
  list_of_button ,
  selectIcon ,
  position ,
  make ,
}
/* react Not a pure module */