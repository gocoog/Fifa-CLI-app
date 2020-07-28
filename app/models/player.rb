require 'pry'
class Player < ActiveRecord::Base
    has_many :contracts
    has_many :teams, through: :contracts

    def net_worth
        self.contracts.inject(sum = 0) {|sum, x| sum + x.amount}
    end

    def name
        self.first_name + " " + self.last_name
    end

    # def team 
    #     self.teams.map {|i| i.team_name}
    # end
end
