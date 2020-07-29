require_relative '../config/environment'
require 'pry'

prompt = TTY::Prompt.new
a = Artii::Base.new
puts a.asciify('FIFA CLI App').bold.blue
puts "Hello and welcome to our Fifa player database!"
puts "Please type in a player name or type 'help' to bring up a list of commands:"

while (input = gets.chomp) != 'exit'

    input = input.downcase

   
    input_split = input.split.map(&:capitalize)
    team = Team.all.find{|i| i.team_name.include?(input_split[0])}
    
    player = Player.where('first_name = ? OR last_name = ?', input_split[0], input_split[0]).first
 
    if input == 'all players'
        puts "-------------------------"
        Player.all.each do |i|
            puts i.name
            puts "Position: #{i.position}"
            puts "Number: #{i.number}"
            puts "Teams: #{i.teams.map {|i| i.team_name}.join(', ')}"
            puts "-------------------------"
        end
    elsif input == "all teams"
        puts "-------------------------"
        Team.all.each do |i|
            puts i.team_name
            puts "-------------------------"
        end
    elsif input.include?("new contract") == true
        choices = Team.all.map  {|i| i.team_name}
        team_choice = prompt.select("What team will he play for?", choices)
        team_choice = Team.find_or_create_by(team_name: team_choice)
        puts "Congratulations on #{player.name}'s professional career! Now a contract has to be made."
        puts "How much is the contract for?"
        new_amount = gets.chomp
        puts "enter todays date:"
        new_date = gets.chomp
        new_contract = Contract.create({player_id: player.id, team_id: team_choice.id, amount: new_amount, date: new_date})
        puts "done"
    elsif input.include?("new team") == true
        puts "enter team names"
    elsif input.include?('net worth') == true
        puts "-------------------------"
        puts "total contract net worth = $#{player.net_worth}"
        puts "-------------------------"
    elsif input.include?('retired') == true
        player.retired
        player.contracts.destroy
        puts "#{player.name} has been retired."
    elsif input.include?("teams")
        puts "#{player.teams.map {|i| i.team_name}.join(', ')}"
    elsif team != nil
       
        puts "-------------------------"
        team.players_names
        puts "-------------------------"
    elsif player != nil
        puts "-------------------------"
        puts player.name
        puts "Teams: #{player.teams.map {|i| i.team_name}.join(', ')}"
        puts "-------------------------"
    elsif input == 'help'
        puts "#" * 55
        puts "Below is a list of commands you can enter:"
        commands
        puts "#" * 55
    elsif player == nil
        puts "Player not found. Would you like to create one?(yes or no)"
        answer = gets.chomp
        if answer == 'yes'
            puts "First name: "
            first_n = gets.chomp.capitalize
            puts "Last namme: "
            last_n = gets.chomp.capitalize
            puts "Position: "
            new_position = gets.chomp.downcase
            puts "Number: "
            new_number = gets.chomp
            new_player = Player.create({first_name: first_n, last_name: last_n, position: new_position, number: new_number})
            puts "Player created! Enter new search"
            choices = Team.all.map  {|i| i.team_name}
            team_choice = prompt.select("What team does he play for?", choices)
            team_choice = Team.find_or_create_by(team_name: team_choice)
            puts "Congratulations on #{new_player.name}'s professional career! Now a contract has to be made."
            puts "How much is the contract for?"
            new_amount = gets.chomp
            puts "enter todays date:"
            new_date = gets.chomp
            new_contract = Contract.create({player_id: new_player.id, team_id: team_choice.id, amount: new_amount, date: new_date})
            puts "done"
        else 
            puts "Okay please enter a command or player name"
            next
        end
    else
        puts "Please enter a valid name or command; Type 'help' for a list of available commands"
    end


end
puts "Goodbye!"

BEGIN{
    def commands
        puts "Type in player first and/or last name to search player details"
        puts "Type 'all players' to see a list of all players"
        puts "Type player name plus 'retired' to bid farewell to a player who is retiring"
        puts "type player name + 'net worth' to see total net worth of contracts"
        puts "Type 'exit' to exit the application"
    end
}
