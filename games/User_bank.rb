class User
  @user = []
  puts "Hello newcomer! What is your name?" 
  print "\n-- "
  newcomer = gets.strip
  @user << newcomer
  puts "It's nice to meet you #{@user}! Hope you enjoy the casino!"
end
