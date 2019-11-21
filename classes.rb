# Classes Hero - user characters and stats are instances of this class

class Hero
        
    #all player start with 100 health
    @@initial_health = 100.to_i
    
    def self.initial_health
        @@initial_health
    end
     
    attr_reader :name, :health, :cash, :swagger_clout, :sure_footedness, :bladder, :belly

    # these player stats differ based on chosen character
    def initialize(name, cash, swagger_clout, sure_footedness)
        @name = name
        @cash = cash.to_i
        @swagger_clout = swagger_clout.to_i
        @sure_footedness = sure_footedness.to_i                   
        @bladder = rand(1..40)
        @belly = rand(1..40)
        @health = Hero.initial_health

    end

      
    def display_stats()
        puts "#{@name.upcase}'S STATS:".colorize(:red)
        puts "Health: #{@health}"
        puts "Cash: $#{@cash}"
        puts "Swagger & Clout: #{@swagger_clout}"
        puts "Sure-Footedness: #{@sure_footedness}"
        puts "Bladder Level: #{@bladder}"
        puts "Belly Level: #{@belly}"
    end 

    def stats_adjust(cash, health, swagger_clout, sure_footedness, bladder, belly)
            @cash = @cash + cash
            @health = @health + health
            @swagger_clout = @swagger_clout + swagger_clout
            @sure_footedness = @sure_footedness + sure_footedness
            @bladder = @bladder + bladder
            @belly = @belly + belly
       

    end

   def recharge
        puts "Would you like to eat/drnk/smoke on your walk?"
    
         2.times do
            
           puts" 
           
            1. kebab with the lot
            2. DedBull energy drink
            3. ciggie  
            4. all done  
            "
            answer = gets.chomp
            
            case answer
            when "1"
            stats_adjust(1, 1, 1, 1, 1, 1)
            puts "anything else?"
            when "2"
            stats_adjust(1, 1, 1, 1, 1, 1)
            puts "anything else?"
            when "3"
            stats_adjust(1, 1, 1, 1, 1, 1)
            puts "anything else?"
            when "4"
            break
            end 

        end
    
    
    end
    
    def imbibe(drink)
        #needs to adjust the hero's stats based on the chosen drink
        stats_adjust(drink.cost, drink.health, drink.swagger_clout, drink.sure_footedness, drink.bladder, drink.belly )

    end
    
    ###
    # This method takes the users input and yada yada yada
    # Input: decision (of type Decision)
    # Outputs: no returns
    ###
    def make_a_decision(decision)
        #needs to adjust the hero's stats based on the chosen drink
        stats_adjust(decision.cost, decision.health, decision.swagger_clout, decision.sure_footedness, decision.bladder, decision.belly )

    end


end

class Venue

    attr_reader :name, :street, :drinks, :obstacle

    def initialize(name, street, drinks, obstacle) 
        @name = name
        @street = street
        @drinks = drinks
        @obstacle = obstacle # type: Action 
        # do the same thing for challenge
    
    end

    def display_menu()
        
        drinks.each_with_index do |drink, index|

          puts "#{index+1}. #{drink.to_string()}"

        end
     
     end

     def display_obstacle()
     
        puts obstacle.proposition
        
        obstacle.decisions.each_with_index do |decision, index|
        
        puts "#{index+1}. #{decision.name}"
        end

    end 

end


class Drink

    attr_reader :name, :cost, :swagger_clout, :sure_footedness, :bladder, :belly, :health
    
        def initialize(name, array)
            @name = name
            @cost = array[0].to_i
            @swagger_clout = array[1]
            @sure_footedness = array[2]                 
            @bladder = array[3]
            @belly = array[4]
            @health = array[5]
        end
        
       def to_string()
            return "#{@name} $#{@cost}"

       end 
    
end

class Action

    attr_reader :proposition, :decisions

    def initialize(proposition, decisions)
     @proposition = proposition
     @decisions = decisions
    
    end 


end

class Decision

    attr_reader :name, :cost, :swagger_clout, :sure_footedness, :bladder, :belly, :health
    
    def initialize(name, array)
        @name = name
        @cost = array[0].to_i
        @swagger_clout = array[1].to_i
        @sure_footedness = array[2].to_i                   
        @bladder = array[3].to_i
        @belly = array[4].to_i
        @health = array[5].to_i
    end
    

    #name will be eg put a fiver in old willys hat
    def to_string()
        return "#{@name}"
    end 
    
end