
class Player < ActiveRecord::Base
    has_many :contracts
    has_many :teams, through: :contracts

    def net_worth
        
    end
end