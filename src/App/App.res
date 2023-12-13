open Game
@react.component
let make = () => {
    let (pick, setPick) = React.useState(()=>Rock)
  <Layout>
    <div className="bg-pentagon border-2">
      <div className="p-4 w-20 h-20 flex justify-center items-center bg-white rounded-full border-8 cursor-pointer hover:scale-105 border-lizard"><img src="/icon-lizard.svg"/></div>
      <div className="p-4 w-20 h-20 flex justify-center items-center bg-white rounded-full border-8 cursor-pointer hover:scale-105 border-paper"><img src="/icon-paper.svg"/></div>
      <div className="p-4 w-20 h-20 flex justify-center items-center bg-white rounded-full border-8 cursor-pointer hover:scale-105 border-rock"><img src="/icon-rock.svg"/></div>
      <div className="p-4 w-20 h-20 flex justify-center items-center bg-white rounded-full border-8 cursor-pointer hover:scale-105 border-scissors"><img src="/icon-scissors.svg"/></div>
      <div className="p-4 w-20 h-20 flex justify-center items-center bg-white rounded-full border-8 cursor-pointer hover:scale-105 border-cyan"><img src="/icon-spock.svg"/></div>
    </div>
  </Layout>
}
