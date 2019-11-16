class Hero
   
        
    def pub_drink1()
        puts"
        What would you like to drink?
        1. Pint of beer  $10
        2. House Wine $8
        3. Spirit of Choice $5 
        4  Shot of choice $12"
    
        answer = gets.chomp
  
        case answer
        when "1"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "2"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "3"
            stats_adjust(-10, -2, +5, -4, +5, +2)     
        when "4"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        
        end 
    end 

    def pub_drink2()
        puts"
        What would you like to drink?
        1. Flaggon $10
        2. Wine $8
        3. Spirit $5 
        4  Flaming Sambuca $12"
    
        answer = gets.chomp
  
        case answer
        when "1"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "2"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "3"
            stats_adjust(-10, -2, +5, -4, +5, +2)     
        when "4"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        
        end 
    end 
    
    def pub_drink3()
        puts"
        What would you like to drink?
        1. Pint $10
        2. Wine $8
        3. Spirit $5 
        4  Shots! Shots! Shots! $12"
    
        answer = gets.chomp
  
        case answer
        when "1"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "2"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "3"
            stats_adjust(-10, -2, +5, -4, +5, +2)     
        when "4"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        
        end 
    end 
    
    def pub_drink4()
        puts"
        What would you like to drink?
        1. Pint $10
        2. Wine $8
        3. Spirit $5 
        4  Shots! Shots! Shots! $12"
    
        answer = gets.chomp
  
        case answer
        when "1"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "2"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "3"
            stats_adjust(-10, -2, +5, -4, +5, +2)     
        when "4"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        
        end 
    end 

    def pub_drink5()
        puts"
        What would you like to drink?
        1. Pint of warm beer $10
        2. Swig straight from the goon bag $8
        3. I think its rum? $5 
        4  Shot of Absinthe! $22"
    
        answer = gets.chomp
  
        case answer
        when "1"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "2"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        when "3"
            stats_adjust(-10, -2, +5, -4, +5, +2)     
        when "4"
            stats_adjust(-10, -2, +5, -4, +5, +2)
        
        end 
    end 
end






