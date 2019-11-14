require 'colorize'

class Hero
        
    @@initial_health = 100
    

        def self.initial_health
        @@initial_health
        end

        
    
        attr_reader :name, :health, :cash, :swagger_clout, :sure_footedness, :bladder, :belly

    def initialize(name, cash, swagger_clout, sure_footedness)
        @name = name
        @cash = cash
        @swagger_clout = swagger_clout 
        @sure_footedness = sure_footedness 
                
        
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

end

#hero's
kev = Hero.new("Kev","150","90","90")
douggie = Hero.new("Douggie","220","70","80") 
robbo = Hero.new("Robbo","270","100","60")
bazza = Hero.new("Bazza","120","50","50")