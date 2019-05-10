require "pry"
require "colorize"

class Casino
  def initialize
    MainMenu.new
  end
end

class MainMenu
  def initialize
    puts "Welcome to the Royal Ruby Casino!"
    puts "Please pick an option:"
    puts "1) Games"
    puts "2) Cash out"
    puts "3) Exit the casino"
    input = gets.strip
    case input
    when "1"
      GameMenu.new
    when "2"
      # Cash Out
    when "3"
      puts "We hope you enjoyed your time at the Royal Ruby Casino!!!"
      exit
    else
      puts "Pick 1, 2, or 3 please!"
      initialize
    end
  end
end

class GameMenu
  def initialize
    puts "Please pick a game"
    puts "1) Game 1"
    puts "2) Game 2"
    puts "3) Game 3"
    puts "4) Game 4"
    puts "5) Game 5"
    puts "6) Exit to main menu"
    choice = gets.strip
    case choice
    when "1"
      # Game 1 goes here
    when "2"
      # Game 2 goes here
    when "3"
      # Game 3 goes here
    when "4"
      # Game 4 goes here
    when "5"
      Roulette.new
    when "6"
      MainMenu.new
    else
      puts "Please make a choice"
      initialize
    end
  end
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
    puts "1) Red"
    puts "2) Black"
    puts "3) green" 

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

