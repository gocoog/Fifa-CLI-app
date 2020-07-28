Player.destroy_all
Team.destroy_all
Contract.destroy_all


lionel_messi = Player.create({first_name: "lionel", last_name: "messi", position: "mid", number: 10})
barcelona = Team.create({team_name: "Barcelona", league: "la liga"})
barca_contract = Contract.create({player: lionel_messi, team: barcelona, amount: 10000000, date: "7/28/2020"})

cristiano_ronaldo = 
juventus = 
cronaldo_contract = 

