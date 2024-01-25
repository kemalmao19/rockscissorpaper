/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.bs.mjs"],
  theme: {
    colors: {
      // Neutral //
      white: "#ffffff",
      "dark-text": "hsl(229, 25%, 31%)",
      "score-text": "hsl(229, 64%, 46%)",
      "header-outline": "hsl(217, 16%, 45%)",

      // Primary //
      'scissor': 'hsl(39, 89%, 49%)',
      'scissor-gradient': 'linear-gradient(to right, hsl(39, 89%, 49%), hsl(40, 84%, 53%))',
      'paper': 'hsl(230, 89%, 62%)',
      'paper-gradient': 'linear-gradient(to right, hsl(230, 89%, 62%), hsl(230, 89%, 65%))',
      'rock': 'hsl(349, 71%, 52%)',
      'rock-gradient': 'linear-gradient(to right, hsl(349, 71%, 52%), hsl(349, 70%, 56%))',
      'lizard': 'hsl(261, 73%, 60%)',
      'lizard-gradient': 'linear-gradient(to right, hsl(261, 73%, 60%), hsl(261, 72%, 63%))',
      'spock': 'hsl(189, 59%, 53%)',
      'spock-gradient': 'linear-gradient(to right, hsl(189, 59%, 53%), hsl(189, 58%, 57%))',
      // Background //
      "custom-gradient": "radial-gradient(circle, hsl(214, 47%, 23%) 0%, hsl(237, 49%, 15%) 100%)",
    },
    extend: {
      backgroundImage: {
        pentagon: "url('/bg-pentagon.svg')",
      },
    },
  },
  plugins: [],
};
