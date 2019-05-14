require_relative "./games/slots.rb"
require_relative "./games/User_bank.rb"
require_relative "./games/rock_paper_scissors.rb"

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
    puts "2) Rock Paper Scissors"
    puts "3) Game 3"
    puts "4) Game 4"
    puts "5) Roulette"
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
      RockPaper.new
      game_menu
    when "3"
      # Game 3 goes here
    when "4"
      # Game 4 goes here
    when "5"
      Roulette.new
      link_to roulette_backup.rb
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


class Wallet
  def initialize
    @wallet = 0
  end 

  attr_accessor :wallet

  def view_balance
    @wallet
  end 

  def increase_balance(amount)
    @wallet += amount
  end

  def decrease_balance(amount)
    @wallet -= amount
  end 
end

class Player < Wallet
  attr_accessor :playername

  def initialize
    @playername = playername
    super()
  end 

  def welcome_menu
    puts
    puts "Welcome to Red Ruby Casino"
    puts
    puts "Please give us your name: "
    puts
    @playername = gets.strip.to_s
    player_name
  end

  def player_name
    puts
    puts "Hello, #{@playername}. How much money are you bringing to the casino today?"
    puts
    @wallet = gets.strip.tap { |s| s.delete!(",") }.to_i
    player_money
  end 

  def player_money
    puts
    if @wallet <= 0
      puts "Please don't make us kick you out!"
      player_name
    else
      puts
      puts "Please enjoy your time here at the Red Ruby Casino, #{@playername}."
      puts
    end
  end

end 
