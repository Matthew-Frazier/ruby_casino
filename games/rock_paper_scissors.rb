class RockGame
    def initialize
   @options = [
       "rock", 
       "paper", 
       "scissors"
    ]

    @options. 
   puts "Rock, Paper, or Scissors?"
    choice = gets.strip.downcase
    
        case choice
        
        when
            choice == "rock" && @options.sample("#{paper}")
            puts "You Lose!"
        when
        choice == "rock" && @options.sample("#{scissors}")
        puts "You Win!"
        #add something here to give choice value to wallet
        when choice == "rock" && @options.sample("#{rock}")
            puts "Tie game."
        when 
            choice == "paper" && @options.sample("#{rock}")
        puts "You Win!"
        when 
            choice == "paper" && @options.sample("#{scissors}")
            puts "You Lose!"
        when
            choice == "paper" && @options.sample("#{paper}")
        
            puts "Tie Game!"
        when 
            choice == "scissors" & @options.sample("#{rock}")
        puts "You Lose!"
        when 
            choice == "scissors" & @options.sample("#{paper}")
        puts "You Win!"
        when 
            choice == "scissors" & @options.sample("#{scissors}")
            puts "Tie Game!"
        else "Invalid Response"
            
        end

 

    end
end 
RockGame.new

