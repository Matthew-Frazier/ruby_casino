class Casino
  class User
    puts "What is your name?" 
    print "\n-- "
    @user = gets.strip
    print "\n"
    puts "What's in your wallet?"
    print "\n--"
    @wallet = gets.to_i
    MainMenu.new
  end

  class Roulette 
    def initialize
      colors = ["black", "black", "black", "black", "red", "red", "red", "red", "green", "black", "black", "black", "red", "red", "red"]

      puts `clear`
      puts "Welcome to Roulette!"
      puts "Please place a bet!"
      print "\n-- "

      @bet = gets.to_i

      puts "\n\n"
      puts "Please pick a color!"
      puts "1) Red".colorize(:red)
      puts "2) Black".colorize(:blue)
      puts "3) green".colorize(:cyan)

      color = gets.strip.downcase

      case color
      when "red"
        puts "\n"
        puts "You have bet #{@bet} on red!"
        if colors.sample == "red"
          puts "#{colors.sample}"
          puts "You've won #{@bet + @bet}!"
          @wallet << (@bet + @bet)
          puts "Would you like to play again?"
          replay = gets.strip.downcase
          if replay = "yes"
            Roulette.new
            initialize
          else 
            GamesMenu.new
          end
        else 
          puts "#{colors.sample}"
          puts "Oh no! You've lost #{@bet - @bet}!" 
          @wallet << (- @bet - @bet)
          puts "Would you like to play again?" 
          choice2 = gets.strip.downcase
          if choice2 = "yes"
            Roulette.new
            initialize
          elsif "no"
            GamesMenu.new
          else 
            puts "Invalid Answer: Returning to Main Menu"
            GamesMenu.new
          end
        end
      when "black"
        puts "\n"
        puts "You have bet #{@bet} on black!"
        if colors.sample == "black"
          puts "#{colors.sample}"
          puts "You won #{@bet + @bet}!"
          @wallet << (@bet + @bet)
          puts "Would you like to play again?"
          print "-- "
          replay = gets.strip.downcase
          if replay = "yes"
            Roulette.new
            initialize
          else 
            GamesMenu.new
          end
        else 
          puts "#{colors.sample}"
          puts "Oh no! You've lost #{@bet - @bet}!" 
          @wallet << (- @bet - @bet)
          puts "Would you like to play again?" 
          choice2 = gets.strip.downcase
          if choice2 = "yes"
            Roulette.new
            initialize
          elsif "no"
            GamesMenu.new
          else 
            puts "Invalid Answer: Returning to Main Menu."
            GamesMenu.new
          end
        end
      when "green" 
        puts "\n"
        puts "Highroller! Betting #{@bet} on green!" 
        if colors.sample == "green"
          puts "#{colors.sample}"
          puts "Winner! Winner! Chicken Dinner!"
          puts "You won #{@bet * @bet}!!"
          @wallet << (@bet * @bet)
          puts "Would you like to play again?"
          print "-- "
          choice3 = gets.strip.downcase
          if choice3 == "yes"
            Roulette.new
            initialize
          elsif "no"
            GamesMenu.new
          else 
            puts "Invalid Answer: Returning to Main Menu."
            GamesMenu.new
          end

        else 
          puts "Sorry! You've lost #{@bet}!"
          puts "Better luck next time!" 
          puts "\n"
          puts "Would you like to play again?"
          print "-- "
          choice4 = gets.strip.downcase
          if choice4 == "yes"
            Roulette.new
            initialize
          elsif "no"
            GamesMenu.new
          else "Invalid Answer: Returning to Main Menu."
            GamesMenu.new
          end
        end
      end
    end
  end
  
end