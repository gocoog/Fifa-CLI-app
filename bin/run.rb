require_relative '../config/environment'
require 'pry'

puts "Hello and welcome to our Fifa player database!"
puts "Please type in a player name or type 'help' to bring up a list of commands:"

while (input = gets.chomp) != 'exit'

    input = input.downcase
   
    player_split = input.split
    player = Player.find_by(first_name: player_split[0], last_name: player_split[1])
    if player != nil
        puts "hes here"
    elsif input == 'help'
        puts "#" * 50
        puts "Below is a list of commands you can enter:"
        commands
        puts "#" * 50
    elsif input == 'all players'
        puts "-------------------------"
        Player.all.each do |i|
            puts i.name
            puts "Position: #{i.position}"
            puts "Number: #{i.number}"
            puts "Teams: #{i.teams.map {|i| i.team_name}}"
            puts "-------------------------"
        end
    else
        puts "Please enter a valid name or command; Type 'help' for help"
    end


end
puts "Goodbye!"

BEGIN{
    def commands
        puts "Type 'all players' to see a list of all players"
        puts "type "
        puts "Type 'exit' to exit the application"
    end
}
