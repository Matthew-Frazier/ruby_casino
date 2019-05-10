# class casino

class High_Low
  def initialize
    @player_wallet = Wallet.new

    def show
      puts @player_wallet.view_wallet
    end

    def bet
      puts "Place your bets!"
      input = gets.to_i
      @player_wallet.win(input)
    end

    #everything below this line work properly
    num = rand(1..12) 
    puts "Guess a number between 1 and 12"
  
    loop do 
      user_answer = gets.chomp.to_i
      
      if user_answer == num
        puts " Winner Winner Chicken Dinner!!"
        break
      elsif user_answer > num
        puts "You guess too friggin high, try again loser!"
      elsif user_answer < num
        puts "Jeez your bad at this, too low! try again!"

      end
  end
end
# class MainMenu
  
end

High_Low.new
