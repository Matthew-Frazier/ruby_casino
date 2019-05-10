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
      # Game 5 goes here
    when "6"
      MainMenu.new
    else
      puts "Please make a choice"
      games
    end
  end
end

Casino.new
