class Contract < ActiveRecord::Base
    belongs_to :team
    belongs_to :player


    # attr_accessor :player, team, amount, sign_date

    # def initialize(player, team, amount, sign_date)
    #         @player = player 
    #         @team = team 
    #         @amount = amount 
    #         @sign_date = sign_date
    # end

end
  