class Team < ActiveRecord::Base
    has_many :contracts
    has_many :players, through: :contracts

    # attr_accessor :name, league 

    # def initialize(team, league)
    #     @team = team 
    #     @league = league 
    # end

end