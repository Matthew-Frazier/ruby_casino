require 'colorize'
$player_score = 0
class RockPaper
    def initialize
        while true 
            puts "Welcome to rock, paper and scissors"
            puts "Make your choice. Rock, Paper, or Scissors?"
            player_choice = gets.chomp.downcase 
            computer_choice = ["scissors", "rock", "paper",] [rand(3)]
            
            puts "Computer picked #{computer_choice}.".colorize(:light_blue)
            puts "You picked #{player_choice}.".colorize(:blue)

            answer = case [player_choice, computer_choice]
            when ["rock", "rock"], ["scissors", "scissors"], ["paper", "paper"]
            $player_score +=1
            puts "TIE GAME - you only earned 1 point.".colorize(:green)
            puts "Your current score is #{$player_score}".colorize(:yellow)
            
            when ["rock", "scissors"], ["scissors", "paper"], ["paper", "rock"]
                $player_score +=3
                puts "You Win! And earned 3 points.".colorize(:green)
                puts "Your current score is #{$player_score}".colorize(:yellow)
                
            when
                ["rock", "paper"], ["scissors", "rock"], ["paper", "scissors"]
                $player_score -=3
                puts "You Lose! And you lose 3 points.".colorize(:red)
                puts "Your current score is #{$player_score}".colorize(:yellow)
                
               
            else 
                puts "Invalid response. Please select rock, paper, or scissors."
            end
        end 
        puts answer
        puts "Your score is: #{$player_score}"
       
    end 
end
RockPaper.new
