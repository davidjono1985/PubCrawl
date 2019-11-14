
class Hero
        
    @@initial_health = 100
    @@initial_bladder = rand(10..40)
    @@initial_belly = rand(10..40)

        def self.initial_health
        @@initial_health
        end

        def self.initial_bladder
        @@initial_bladder
        end

        def self.initial_belly
        @@initial_belly
        end    
    
        attr_reader :name, :health, :cash, :swagger_clout, :sure_footedness, :bladder, :belly

    def initialize(name, cash, swagger_clout, sure_footedness)
        @name = name
        @cash = cash
        @swagger_clout = swagger_clout 
        @sure_footedness = sure_footedness 
                
        @health = Hero.initial_health
        @bladder = Hero.initial_bladder 
        @belly = Hero.initial_belly

    end

    def display_stats()
        puts "#{@name.upcase}'S STATS:"
        puts "Health: #{@health}"
        puts "Cash: $#{@cash}"
        puts "Swagger&Clout: #{@swagger_clout}"
        puts "Sure-Footedness: #{@sure_footedness}"
        puts "Bladder Level: #{@bladder}"
        puts "Belly Level: #{@belly}"
    end 

end