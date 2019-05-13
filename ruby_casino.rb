require_relative "./games/slots.rb"
require_relative "./games/User_bank.rb"

require "pry"
require "colorize"

class Casino < Player
  def initialize
    super()
    welcome_menu
    main_menu
  end

  def main_menu 
    puts "Please pick an option:"
    puts "1) Games"
    puts "2) View wallet"
    puts "3) Cash out"
    puts "4) Exit the casino"
    input = gets.strip
    case input
    when "1"
      game_menu
    when "2"
      puts "your current wallet is: $#{@wallet}"
      main_menu
    when "3"
      # Cash Out
    when "4"
      puts "We hope you enjoyed your time at the Red Ruby Casino!!!"
      exit
    else
      puts "Pick 1, 2, 3, or 4 please!"
      initialize
    end
  end
  
  def game_menu
    puts "Please pick a game"
    puts "1) Slot Machine"
    puts "2) Game 2"
    puts "3) Game 3"
    puts "4) Game 4"
    puts "5) Game 5"
    puts "6) View Wallet"
    puts "7) Exit to main menu"
    choice = gets.strip
    case choice
    when "1"
      if @wallet < 5
        puts "You don't have enought money to play this game!"
        game_menu
      else
        Slots.new
        game_menu
      end
    when "2"
      # Game 2 goes here
    when "3"
      # Game 3 goes here
    when "4"
      # Game 4 goes here
    when "5"
      Roulette.new
    when "6"
      puts "your current wallet is: $#{@wallet}"
      game_menu
    when "7"
      main_menu
    else
      puts "Please make a choice"
      game_menu
    end
  end
end
Casino.new