// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Rule from "./Components/Menu/Rule.bs.mjs";
import * as Header from "./Components/Header/Header.bs.mjs";
import * as RuleState from "./Components/State/RuleState.bs.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function Layout(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Header.make, {}),
                JsxRuntime.jsx("section", {
                      children: props.children
                    }),
                JsxRuntime.jsx(RuleState.Provider.make, {
                      children: JsxRuntime.jsx(Rule.make, {})
                    })
              ],
              className: "p-10 relative"
            });
}

var make = Layout;

export {
  make ,
}
/* Rule Not a pure module */
