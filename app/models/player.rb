class Player < ActiveRecord::Base
    has_many :contracts
    has_many :teams, through: :contracts

    # attr_accessor :name, :position, :player_number 


    # def initialize(name, position, player_number)
    #     @name = name 
    #     @position = position 
    #     @player_number = player_number
    # end
  
end