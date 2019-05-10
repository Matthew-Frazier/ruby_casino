

class Wallet
  attr_accessor :wallet

  def initialize
    @wallet = 100.00
    view_wallet
  end

  def view_wallet
    puts "Wallet Amount: $#{@wallet}"
  end

  def win(bet)
    @wallet += bet
  end

  def lose
  end
end

Wallet.new
