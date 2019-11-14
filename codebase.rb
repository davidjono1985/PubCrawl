# health – get to zero you die
# swagger_clout – get to zero you get arrested
# sure_footedness – gets to zero you black out
# cash – gets to zero you have to go home
# bladder – if full you can’t drink any more until you go to the toilet
# belly– if max is reached you automatically vomit (vomiting costs overall health and swagger points)


class Hero
    
    @@initial_health = 100
    @@initial_bladder = rand(10..40)
    @@initial_belly = rand(10..40)

    # @@level_up = 1
    # @@experience_up = 30
    # @@happiness_up = 30
    # @@hunger_up = 20

    def self.initial_health
        @@initial_health
    end

    def self.initial_bladder
        @@initial_bladder
    end

    def self.initial_belly
        @@initial_belly
    end    

    attr_accessor :name, :health, :cash, :swagger_clout, :sure_footedness, :bladder, :belly

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

kev = Hero.new("Kev","150","90","90")
douggie = Hero.new("Douggie","220","70","80") 
jimbo = Hero.new("Jimbo","270","100","60")
bazza = Hero.new("Bazza","120","50","50")

kev.display_stats
douggie.display_stats
jimbo.display_stats
bazza.display_stats



# puts "#{kev.name.upcase}'S STATS:"
# puts "Health: #{kev.health}"
# puts "Cash: $#{kev.cash}"
# puts "Swagger&Clout: #{kev.swagger_clout}"
# puts "Sure-Footedness: #{kev.sure_footedness}"
# puts "Bladder Level: #{kev.bladder}"
# puts "Belly Level: #{kev.belly}"



