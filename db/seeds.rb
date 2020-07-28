Player.destroy_all
Team.destroy_all
Contract.destroy_all


lionel_messi = Player.create({first_name: "Lionel", last_name: "Messi", position: "mid", number: 10})
barcelona = Team.create({team_name: "Barcelona", league: "la liga"})
barca_contract = Contract.create({player: lionel_messi, team: barcelona, amount: 26000000, date: "7/28/2020"})

cristiano_ronaldo = Player.create({first_name: "Cristiano", last_name: "Ronaldo", position: "forward", number: 7})
juventus = Team.create({team_name: "Juventus", league: "Serie A"})
cronaldo_contract = Contract.create({player: cristiano_ronaldo, team: juventus, amount: 34000000, date: "6/06/2020"})


neymar_junior = Player.create({first_name: "Neymar", last_name: "da Silva Santos Junior", position: "forward", number: 10})
juventus = Team.create({team_name: "Paris Saint-Germain F.C.", league: "France Ligue 1"})
jneymar_contract = Contract.create({player: neymar_junior, team: psg, amount: 38000000, date: "2/03/2019"})


salah_ghaly = Player.create({first_name: "Salah", last_name: "Mohamed ", position: "forward", number: 11})
liverpool = Team.create({team_name: "Liverpool FC", league: "Premier League"})
salah_contract = Contract.create({player: salah_júnior, team: liverpool, amount: 25000000, date: "1/01/2017"})


ronaldinho = Player.create({first_name: "Ronaldinho", last_name: "de Assis Moreira", position: "mid", number: 10})
barcelona = Team.create({team_name: "Barcelona", league: "la liga"})
ronaldinho_contract = Contract.create({player: ronaldinho, team: barcelona, amount: 37000000, date: "6/05/2004"})


zlatan = Player.create({first_name: "Zlatan", last_name: "Ibrahimovic", position: "forward", number: 21})
milan = Team.create({team_name: "AC Milan", league: "Serie A"})
zlatan_contract = Contract.create({player: zlatan_ibrahimovic, team: milan, amount: 8000000, date: "9/04/1019"})


ederson = Player.create({first_name: "Ederson", last_name: "Santana de Moraes", position: "goalkeeper", number: 31})
man_city = Team.create({team_name: "Manchester City F.C.", league: "Premier League"})
ederson_contract = Contract.create({player: ederson_moraes, team: man_city, amount: 4000000, date: "4/05/2018"})


neuer = Player.create({first_name: "Manuel", last_name: "Neuer", position: "goalkeeper", number: 1})
bayern_munich = Team.create({team_name: "Bayern Munich", league: "Bundesliga"})
neuer_contract = Contract.create({player: neuer_manuel, team: bayern_munich, amount: 9000000, date: "4/26/2018"})


paul = Player.create({first_name: "Paul", last_name: "Pogba", position: "mid", number: 6})
man_united = Team.create({team_name: "Manchester United F.C.", league: "Premier League"})
paul_contract = Contract.create({player: paul_pogba, team: man_united, amount: 15000000, date: "12/14/2012"})


koke = Player.create({first_name: "Jorge", last_name: "Resurreccion Merodio", position: "mid", number: 6})
atletico_madrid = Team.create({team_name: "Atletico Madrid", league: "La Liga"})
koke_contract = Contract.create({player: jorge_merodio, team: atletico_madrid, amount: 20000000, date: "8/12/2016"})



cristiano_ronaldo = Player.create({first_name: "Cristiano", last_name: "Ronaldo", position: "forward", number: 7})
portugal_national_football_team  = Team.create({team_name: "Portugal national football team", league: "International"})
cronaldo_national_contract = Contract.create({player: cristiano_ronaldo, team: portugal_national_football_team, amount: 10000000, date: "6/06/2010"})


lionel_messi = Player.create({first_name: "Lionel", last_name: "Messi", position: "mid", number: 10})
argentina_national_football_team = Team.create({team_name: "Argentina national football team", league: "International"})
messi_national_contract = Contract.create({player: lionel_messi, team: argentina_national_football_team, amount: 12000000, date: "06/28/2011"})


salah_ghaly = Player.create({first_name: "Salah", last_name: "Mohamed ", position: "forward", number: 10})
egypt_national_football_team = Team.create({team_name: "Egypt national football team", league: "International"})
salah_national_contract = Contract.create({player: salah_júnior, team: egypt_national_football_team, amount: 8000000, date: "04/04/2015"})



neymar_junior = Player.create({first_name: "Neymar", last_name: "da Silva Santos Junior", position: "forward", number: 10})
brazil_national_football_team  = Team.create({team_name: "Brazil national football team ", league: "International"})
neymar_national_contract = Contract.create({player: neymar_junior, team: brazil_national_football_team , amount: 18000000, date: "08/03/2014"})



ederson = Player.create({first_name: "Ederson", last_name: "Santana de Moraes", position: "goalkeeper", number: 1})
brazil_national_football_team = Team.create({team_name: "Brazil national football team", league: "International"})
ederson_national_contract = Contract.create({player: ederson_moraes, team: brazil_national_football_team , amount: 2000000, date: "6/25/2015"})




