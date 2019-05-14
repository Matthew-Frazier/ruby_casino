require_relative "./User_bank.rb"

require "pry"
require "colorize"

class Slots < Player
  def initialize
    @roll_1 = ["Diamonds", "Hearts", "Clubs", "Spades"]
    @roll_2 = ["Diamonds", "Hearts", "Clubs", "Spades"]
    @roll_3 = ["Diamonds", "Hearts", "Clubs", "Spades"]
    greeting
  end

  def greeting
    # if @wallet < 5
    #   game_menu
    # else
      print `clear`
      begin
        puts "Please put in $5 dollars"
        print "> $"
        cash_input = Integer(gets.strip)
        puts
      rescue
        puts "\nThat's not money!!!"
        sleep(1)
        print `clear`
      retry
      end
      if cash_input == 5
        print `clear`
        slot_game
      elsif cash_input > 5
        puts "Exessive funds!"
        sleep(1)
        print `clear`
        greeting
      else cash_input < 5
        puts "Insufficient funds..."
        sleep(1)
        print `clear`
        greeting
      end
    # end
  end

  def play_again
    puts "Would you like to play again?\n type 'y' for yes or 'n' for no."
    print "> "
    choice = gets.strip.downcase
    if choice == "y"
      print `clear`
      greeting
    elsif choice == "n"
      print `clear`
    else
      print `clear`
      play_again
    end
  end

  def slot_game
    roll_1 = @roll_1.sample
    roll_2 = @roll_2.sample
    roll_3 = @roll_3.sample
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
    sleep(1.5)
    print `clear`
    if roll_1 == roll_2 && roll_2 == roll_3
      puts "!!!JACKPOT!!!"
      puts "You Won $50!!!"
      # adds $50 to players wallet
      sleep(2)
      print `clear`
      play_again
    else roll_1 != roll_2 && roll_2 != roll_3
      puts "Sorry You're A LOSER!!!"
      sleep(2)
      print `clear`
      play_again
    end
  end
end
