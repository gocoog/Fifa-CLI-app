class Team < ActiveRecord::Base
    has_many :contracts
    has_many :players, through: :contracts

    def players_names
        puts self.team_name
        puts "Players: #{self.players.map {|i| i.name}.join(', ')}"
    end
  
end
