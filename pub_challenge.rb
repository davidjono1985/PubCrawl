class Hero

    def pub_challenge1()
        printer "At the back of the pub one of the locals 'Blind Willy' is playing a bootleg game of dice.  
        He challenges you to have a roll for money..
        
        How much do you bet?"
 
        answer = gets.chomp.to_i
        
        printer "You shake the dice like a maracca and let them loose ont eh table"

        dice1 = rand(1..6)
        dice2 = rand(1..6)
        
        puts "dice 1 rolls a #{dice1} and dice 2 rolls a #{dice2}"
    
    
      if (dice1 == 1 && dice2 == 1)
        puts "snake eyes"
        stats_adjust(answer, 0, 0, 0, 0, 0)

      elsif (dice1 + dice2 == 7)
        puts "lucky 7"
         stats_adjust(answer, 0, 0, 0, 0, 0)

      elsif dice1 == dice2
        puts "winner"
         stats_adjust(answer, 0, 0, 0, 0, 0)

      else puts "loser"    
        stats_adjust(answer, 0, 0, 0, 0, 0) 
      end 
          
      end

    def pub_challenge2()
      printer "You walk up to the local vagabond One Armed Larry' - due to his missing appendage he is no good at playing pool so instead challenges you to a game of rock, paper, scissors"
      
      paper_ = 1
      rock_ = 2
      scissors_ = 3
      
      puts "What do you choose? - 
      1. rock 
      2. paper 
      3. scissors?"
      player1 = gets.chomp
      system "clear"

#user 2 enters their selection, terminal clears again

puts "player 2 - rock paper or scissors?"
player2 = gets.chomp
system "clear"
 
#if loop - logic for determining winner/loser - winner is chosen

if  player1 == player2
    puts "it's a tie!!"

elsif player1 == "rock"
    
    if player2 == "paper"
        puts "player 2 wins"
        stats_adjust(answer, 0, 0, 0, 0, 0)
    else 
        player2 == "scissors"
        puts "player 1 wins"
        stats_adjust(answer, 0, 0, 0, 0, 0)
    end

elsif player1 == "paper"
    
    if player2 == "rock"
        puts "player 1 wins"
        stats_adjust(answer, 0, 0, 0, 0, 0)
    else 
        player2 == "scissors"
        puts "player 2 wins"
        stats_adjust(answer, 0, 0, 0, 0, 0)
    end

elsif player1 == "scissors"
    
    if player2 == "paper"
        puts "player 1 wins"
        stats_adjust(answer, 0, 0, 0, 0, 0)
    
    else 
        player2 == "rock"
        puts "player 2 wins"
        stats_adjust(answer, 0, 0, 0, 0, 0)
    end
else 
    puts "something went wrong"
end
      
      
      
      
     
  
         
    end

    def pub_challenge3()
        puts "how much do you want to bet?"
 
        answer = gets.chomp.to_i
         stats_adjust(answer, 0, 0, 0, 0, 0)
    end

    def pub_challenge4()
        puts "how much do you want to bet?"
 
        answer = gets.chomp.to_i
         stats_adjust(answer, 0, 0, 0, 0, 0)
    end

    def pub_challenge5()
        puts "how much do you want to bet?"
 
        answer = gets.chomp.to_i
         stats_adjust(answer, 0, 0, 0, 0, 0)
    end

end


