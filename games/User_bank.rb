

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
    puts "Welcome to Red Ruyb Casino"
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