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

    def retired
        self.destroy
    end

    def plays_for(name)
        team = Team.find_or_create_by(name: name)
        self.team = team
    end

    # def new_teams({number: num, *team_name})
    #     index = 0 
    #     num_of_teams = num

    #     while index < num
    #         self.teams = team_name
    #     end
    # end
end