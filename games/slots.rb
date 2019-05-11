require_relative "../ruby_casino.rb"
require "pry"
require "colorize"

class Slots
  def initialize
    @roll_1 = ["Diamonds", "Hearts", "Clubs", "Spades"]
    @roll_2 = ["Diamonds", "Hearts", "Clubs", "Spades"]
    @roll_3 = ["Diamonds", "Hearts", "Clubs", "Spades"]
    greeting
  end

  def greeting
    puts
    puts "Please put in 5 dollars"
    print "> $"
    cash_input = gets.strip.to_i
    puts
    if cash_input == 5
      # removes $5 from players wallet
      game
    elsif cash_input > 5
      puts "Exessive funds!"
      greeting
    else cash_input < 5
      puts "Insufficient funds..."
      greeting
    end
  end

  def play_again
    puts
    puts "Would you like to play again?\n type 'yes' or 'no'"
    print "> "
    choice = gets.strip.downcase
    if choice == "yes"
      greeting
    elsif choice == "no"
      GameMenu.new
    else
      play_again
    end
  end

  def game
    roll_1 = @roll_1.sample
    roll_2 = @roll_2.sample
    roll_3 = @roll_3.sample
    puts
    sleep(1)
    print roll_1
    sleep(0.33)
    print "."
    sleep(0.33)
    print "."
    sleep(0.33)
    print "."
    sleep(0.33)
    print roll_2
    sleep(0.33)
    print "."
    sleep(0.33)
    print "."
    sleep(0.33)
    print "."
    sleep(0.33)
    print roll_3
    puts
    puts
    sleep(0.5)
    if roll_1 == roll_2 && roll_2 == roll_3
      puts
      puts "You Win $50!!!"
      # adds $50 to players wallet
      play_again
    else roll_1 != roll_2 && roll_2 != roll_3
      puts
      puts "Sorry You're A LOSER!!!"
      play_again
    end
  end
end

Slots.new
