player_score = 0
computer_score = 0

while true 

    puts "Welcome to rock, paper and scissors"
    puts "Make your choice. Rock, Paper, or Scissors?"
    player_choice = gets.chomp.downcase 
    computer_choice = ["scissors", "rock", "paper",] [rand(3)]
    
    puts "Computer picked #{computer_choice}."
    puts "You picked #{player_choice}."

answer = case [player_choice, computer_choice]
        when ["rock", "rock"], ["scissors", "scissors"], ["paper", "paper"]
         computer_score += 1
         player_score += 1
         puts "TIE GAME - you only earned 1 point."
        when ["rock", "scissors"], ["scissors", "paper"], ["paper", "rock"]
            player_socre += 3 
            "You Win! And earned 3 points."
        when
            ["rock", "paper"], ["scissors", "rock"], ["paper", "scissors"]
            computer_score += 3
        else 
            puts "Invalid response. Please select rock, paper, or scissors."
        end 
        puts answer
        puts "Your score is: #{player_score}"
        puts "Computer score is #{computer_score}"
end 
