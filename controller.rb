require 'colorize'
# require './classes/hero_class.rb'
# require './classes/location_class.rb'

# Classes
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

    def pub_drink()
        puts "What would you like to drink
        1. Pint $10
        2. Spirit $10 
        3. Shots! Shots! Shots! $10
        4   . Bartenders choice" 
    
        answer = gets.chomp
    
        case answer
        when "1"
        @cash = @cash - 10
    
        end 
    end 
    
end

class Location

    attr_reader :name

    def initialize(name)
    @name = name
    end

end

pubs = [
    "The Sleazy Plover", "The Swanky Dank", "Chugbarfs Bar and Saloon", "Big Bertha's House Of Blues", 
    "The Swan and Fist", "The Dirty Moose Knuckle", "The Drunken Duck", "The Filthy Ibis", "The Jolly Taxpayer",
    "The Durries End", "The Elephant and Budgie", "The Jazz Cabbage", "The Gainfully Employed Poet", "The Ralph Bucket", 
    "Twig & Giggleberries", "The Slippery Dipstick", "Finnegins Chinnegin", "The Greasy Spit Valve", "Lord Monkeybums", 
    "The Praying Mennis", "The Busted Football", "Haireola's","Nip & Sip's","The Cat's Diddle", "The Wig and Pissle",  ]

streets = [
    "Sesame Street", "Copperhead Road", "The Boulevard of Broken Dreams", "Baker Street","Route 66", "Penny Lane", "Ocean Avenue", 
    "Iamthe Highway", "Electric Avenue", "Abbey Road", "Madison Avenue", "Smith Street", "Thunder Road", "Main Street", "the Highway to Hell",
    "Ventura Highway", "Sunset Boulevard", "Yellow Brick Road", "Road to Nowhere", "accross the 8-mile", "Ocean Drive", "Devil Gate Drive", 
    "Holiday Road" ]

pub1 = Location.new(pubs.shuffle.first)
pub2 = Location.new(pubs.shuffle.first)
pub3 = Location.new(pubs.shuffle.first)
pub4 = Location.new(pubs.shuffle.first)
pub5 = Location.new(pubs.shuffle.first)

street1 = Location.new(streets.shuffle.first)
street2 = Location.new(streets.shuffle.first)
street3 = Location.new(streets.shuffle.first)
street4 = Location.new(streets.shuffle.first)

kev = Hero.new("Kev","150","90","90")
douggie = Hero.new("Douggie","220","70","80") 
robbo = Hero.new("Robbo","270","100","60")
bazza = Hero.new("Bazza","120","50","50")


loop do 
puts "Welcome to the ultimate PubCrawl adventure game! 

            1. Rules
            2. View Hero's
            3. Play
                                "

    answer = gets.chomp

  
  
        case answer
    
        when "1"
            puts "
            THE RULES ARE SIMPLE!
            Make it through 6 pubs without dying, blacking out or getting arrested.  
            Start by choosing one of four “heroes” - all have different starting stats.  
            The hero’s stats are affected by different drinks, different challenges and different obstacles.
            Each Pub is a new level -  and drinks, challenges and obstacles get harder as the game progresses.
            WATCH YOUR STATS! 
            Health – get to zero you die
            Swagger_clout – get to zero you get arrested
            Sure Footedness – gets to zero you black out
            Cash – gets to zero you have to go home
            Bladder– if full you can’t drink any more until you go to the toilet
            Belly – if max is reached you automatically vomit (vomiting costs overall health and swagger points)
            INCREASE HEALTH ALONG THE WAY:
            Alcohol – Pints, schooners, pots, spirits, shots, Kebabs, Energy Drinks,Ciggies (decreases health, increases swagger and clout)
            DECREASE HEALTH ALONG THE WAY: Vomit Blackout Bar Fight
            OTHER:Toilet – empty bladder or belly
            Bartender – if swagger or sure footedness too low you can’t drink
            Bouncer – if swagger or sure footedness too low you denied entry"
              
            puts ""
            puts "
                    1. Return to main menu
                    2. View Hero's"  
              
                 answer = gets.chomp

                             
        when "2"
            puts "1.#{kev.display_stats}"
            puts ""
            puts "2.#{douggie.display_stats}"
            puts""
            puts "3.#{robbo.display_stats}"
            puts""
            puts "4.#{bazza.display_stats}"
            puts "who do you choose?"
         
        when "3" 
            puts "You have just entered #{pub1.name}"
        #   pub method

        else 
            puts "unrecognized request"
        end

    end 
    


    
    
















