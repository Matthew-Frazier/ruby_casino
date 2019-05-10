
class Casino

end

class MainMenu
  
end



require "colorize"
    require "pry"
    
    def answers
        [
          "1".colorize(:yellow),
          "2".colorize(:green),
          "3".colorize(:yellow),
          "4".colorize(:green),
          "5".colorize(:yellow),
          "6".colorize(:green),
          "7".colorize(:yellow),
          "8".colorize(:green),
          "9".colorize(:yellow),
          "10".colorize(:green),
          "11".colorize(:yellow),
          "12".colorize(:green)
        ]
      end
      
      def random_answer
        answers[Random.rand(answers.size)]
      end
      
      def shake_ball
        Array.new(1 + Random.rand(5)).map{ |e| "[shake]" }.join(" ")
      end
      
      def wait_for_user
        question = gets.chomp
        exit(0) if question == "q"
      end
      
      def prompt
        "Welcome to the Dice game, guess your number! (q to quit)".colorize(:green)
      end
      
      if __FILE__ == $0
        puts
        puts prompt
        puts
      
        while (true)
          wait_for_user
          puts
          puts shake_ball + " " + random_answer
          puts
        end
    end

    # That was a pain in the ass
    
