# health – get to zero you die
# swagger_clout – get to zero you get arrested
# sure_footedness – gets to zero you black out
# cash – gets to zero you have to go home
# bladder – if full you can’t drink any more until you go to the toilet
# belly– if max is reached you automatically vomit (vomiting costs overall health and swagger points)


class Hero
    
    @@initial_health = 100
    @@initial_bladder = rand(1..20)
    @@initial_belly = rand(1..20)

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

end

kev = Hero.new("Kev","150","100","100")
# douggie 
# jimbo
# bazza

puts "#{kev.name.upcase}'S STATS:"
puts "Health: #{kev.health}"
puts "Cash: $#{kev.cash}"
puts "Swagger&Clout: #{kev.swagger_clout}"
puts "Sure-Footedness: #{kev.sure_footedness}"
puts "Bladder Level: #{kev.bladder}"
puts "Belly Level: #{kev.belly}"



