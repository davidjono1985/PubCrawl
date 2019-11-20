system "clear"

require 'artii'
require 'colorize'

require './crawlerman.rb'

require './pub_challenge.rb'
require './street_obstacle.rb'


# Classes
class Hero
        
    @@initial_health = 100.to_i
    
        def self.initial_health
        @@initial_health
        end
     
        attr_reader :name, :health, :cash, :swagger_clout, :sure_footedness, :bladder, :belly

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
        printer "Would you like to eat/drnk/smoke on your walk?"
    
         loop do
            
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
        
        puts "#{index}. #{decision.name}"
        end

    end 





end


class Drink

    attr_reader :name, :cost, :swagger_clout, :sure_footedness, :bladder, :belly, :health
    
        def initialize(name, cost, swagger_clout, sure_footedness, bladder, belly, health)
            @name = name
            @cost = cost.to_i
            @swagger_clout = swagger_clout.to_i
            @sure_footedness = sure_footedness.to_i                   
            @bladder = bladder
            @belly = belly
            @health = health
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
    
        def initialize(name, cost, swagger_clout, sure_footedness, bladder, belly, health)
            @name = name
            @cost = cost.to_i
            @swagger_clout = swagger_clout.to_i
            @sure_footedness = sure_footedness.to_i                   
            @bladder = bladder
            @belly = belly
            @health = health
        end
        



       def to_string()
            return "#{@name}"
#name will be eg put a fiver in old willys hat
       end 
    
end

pubs = [
    "The Sleazy Plover", "The Swanky Dank", "Chugbarfs Bar and Saloon", "Big Bertha's House Of Blues", 
    "The Swan and Fist", "The Moose Knuckle", "The Drunken Duck", "The Filthy Ibis", "The Jolly Taxpayer",
    "The Durries End", "The Elephant and Budgie", "The Jazz Cabbage", "The Ralph Bucket", "The Tickled Pheasant",
    "Twig & Giggleberries", "The Slippery Dipstick", "Finnegins Chinnegin", "The Greasy Spit Valve", "Lord Monkeybums", 
    "The Praying Mennis", "The Busted Football", "Haireola's","Nip 'n' Sip's","The Cat's Diddle", "The Wig and Pissle", 
    "The Drover's Sandwich", "The Goosey Gander", ]

streets = [
    "Sesame Street", "Copperhead Road", "The Boulevard of Broken Dreams", "Baker Street","Route 66", "Penny Lane", "Ocean Avenue", 
    "Iamthe Highway", "Electric Avenue", "Abbey Road", "Madison Avenue", "Smith Street", "Thunder Road", "Exile On Main Street", "The Highway to Hell",
    "Ventura Highway", "Sunset Boulevard", "Yellow Brick Road", "Road to Nowhere", "The 8-mile", "Ocean Drive", "Devil Gate Drive", 
    "Holiday Road", "Australia Street" ]

list_of_pubs = [

 
]

(0..4).each do 
    drinks = [
        Drink.new("Pint of Beer", "10", 20, -20, +10, +5, -5),
        Drink.new("Spirit of Choice", "5", 15, -15, +8, +4, -4),
        Drink.new("Shots, Shots Shots!", "12", 30, -20, +15, +6, -6)

    ]

    decisions =  [
## todo: change values to match obstacle
        Decision.new("Walk past,", "10", 20, -20, +10, +5, -5),
        Decision.new("Start clapping on the offbeat and jam out with him", "5", 15, -15, +8, +4, -4),
        Decision.new("Throw money in his torn-up buskers hat.", "12", 30, -20, +15, +6, -6),
        Decision.new("Buy him a sandwich from the 7-11.", "12", 30, -20, +15, +6, -6)

    ]

   
    
    
    
    
    obstacle = Action.new(' On the way to the next pub you walk past a homeless busker playing spoons to the beat of Thunderstruck.  Do you:', decisions)


    venue = Venue.new(pubs.shuffle.first,streets.shuffle.first, drinks, obstacle)
    list_of_pubs.push venue


#add venue to list of pubs

end 

list_of_streets = [
    # Location.new(streets.shuffle.first),
    # Location.new(streets.shuffle.first),
    # Location.new(streets.shuffle.first),
    # Location.new(streets.shuffle.first),
]

kev = Hero.new("Kev","150","90","90")
douggie = Hero.new("Douggie","220","70","80") 
robbo = Hero.new("Robbo","270","100","60")
bazza = Hero.new("Bazza","120","50","50")

def printer(string)
    array_of_characters = string.split(//);
    for character in array_of_characters
      sleep 0.1
      print character
    end
end 

def clear()
    system "clear"
end

# utility methods

def do_step(display_method, options)
    #display step - need to add call
    display_method.call()
    # user input
    user_input = gets.chomp.to_i
    # get answer from user 
    selection = user_input -1 # 1,2,3 -> 0,1,2
    # find selected option
    selected_option = options[selection]
    #return selected option
    return selected_option
end


def intro_banner()
    a = Artii::Base.new
    a.asciify('word')
  
 
    puts "************************************************************************************************************".colorize(:red)
    puts a.asciify('                 PubCrawler')
    
    puts "-----The ultimate Pub Crawl adventure game!-----------------------------------------------------------------" 
    puts ""
    puts "************************************************************************************************************".colorize(:red)
end 

def banner(string)
a = Artii::Base.new
a.asciify(string)

puts "************************************************************************************************************".colorize(:red)
puts a.asciify(string)
puts "------------------------------------------------------------------------------------------------------------" 
puts ""
puts "************************************************************************************************************".colorize(:red)
end  



intro_banner()

loop do 1
                
        puts"
                    1. Rules          
                    2. View Hero's    
                    3. Play            
           "

        answer = gets.chomp
  
        case answer
    
        when "1"
            system "clear"
            intro_banner()
            
           
            puts "
            THE RULES ARE SIMPLE!".colorize(:red)
            puts"
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
            Alcohol – Pints, schooners, pots, spirits, shots, Kebabs, Energy Drinks,Ciggies (decreases health, 
            increases swagger and clout)
            DECREASE HEALTH ALONG THE WAY: Vomit Blackout Bar Fight
            OTHER:Toilet – empty bladder or belly
            Bartender – if swagger or sure footedness too low you can’t drink
            Bouncer – if swagger or sure footedness too low you denied entry"
              
                                       
        when "2"
            system "clear"
            intro_banner()
            puts "HERE ARE YOUR LOCAL HEROES!!!!".colorize(:red)
            puts "#{kev.display_stats}"
            puts ""
            puts "#{douggie.display_stats}"
            puts""
            puts "#{robbo.display_stats}"
            puts""
            puts "#{bazza.display_stats}"
                    
        when "3" 
             break
        else 
            puts "unrecognized request"
        end

end 

clear
banner("CHOOSE YOUR HERO!!")

puts"    
    1. Kev
    2. Douggie
    3. Robbo
    4. Bazza "
    
answer = gets.chomp

chosen_hero = ""

case answer

when "1"
      chosen_hero = kev
when "2"
    chosen_hero = douggie
when "3"
    chosen_hero = robbo
when "4"
    chosen_hero = bazza
else
    puts "unrecognized number"    
 
end 

clear

printer ("Bloody good choice! You've chosen #{chosen_hero.name}!!!")
puts ""
puts ""
puts chosen_hero.display_stats

sleep(2)

printer "Let's get crawling!!!!"

sleep(1)

list_of_pubs.each do |venue|
# crawlerman

clear

    puts "             
                      /                             /
                     /_____________________________/ |                             
         ,****.      |                            |  |
        {      }     |    #{venue.name}                     
        .     ,*     |     ________________       |  | 
         ‘} }’       |     |              |############|               
         ./ }        |     |              |############|             
       /’ .} ‘       |     |              |############|   
       }! }   ).     |     |              |############|                 
       {..}  /-_.}   |     |              |######## () |                  
         {   /,      |     |     . . . . .|############|              
        / /’>  *.    |     |   /          |############|                   
        { / ‘.‘/     |     |  /           |############|                      
        {};   } .    |     | /            |############|                   
         {‘_*>.      |     |/             |############|                      
 |>| |>| |>| |>| |>| |>| |>| |>| |>| |>| |>| |>| |>| |>"

sleep(2)


clear
    
#LEVEL1
puts chosen_hero.display_stats()
    printer("You have just entered '#{venue.name}'")
    puts ""

    selected_drink = do_step(venue.method(:display_menu), venue.drinks)


# stats adjusted accordingly
chosen_hero.imbibe(selected_drink)


puts chosen_hero.display_stats
   sleep(4)

    # chosen_hero.pub_challenge1()

    selected_decision = do_step(venue.method(:display_obstacle), venue.obstacle.decisions)
#make the decision
    chosen_hero.make_a_decision(selected_decision)

    puts chosen_hero.display_stats()


    sleep(4)
    clear
    
    printer("You leave '#{venue.name}' and start walking along #{venue.street}")

    puts ""

    chosen_hero.recharge()
    clear


    puts chosen_hero.display_stats()
    printer("You continue along #{venue.street} and head towards the next pub '#{venue.name}'")

end