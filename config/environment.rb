require "bundler/setup"
require "sinatra/activerecord"
Bundler.require
require_all 'app/models'

ENV['SINATRA_ENV'] ||= 'development'

ActiveRecord::Base.establish_connection(ENV['SINATRA_ENV'].to_sym)


# lionel_messi = Player.create(attributes)
# barcelona = Team.create({team_name: "Barcelona", league: "la liga"})
# barca_contract = Contract.create({player: lionel_messi, team: barcelona, amount: 10000000, date: "7/28/2020"})


# lionel_messi.net_worth
# binding.pry