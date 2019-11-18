system "clear"

require 'artii'
require 'colorize'

require './crawlerman.rb'
require './pub_drinks.rb'
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

end

class Location

    attr_reader :name

    def initialize(name)
    @name = name
    end

end

pubs = [
    "The Sleazy Plover", "The Swanky Dank", "Chugbarfs Bar and Grill", "Big Bertha's House Of Blues", 
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
    Location.new(pubs.shuffle.first),
    Location.new(pubs.shuffle.first),
    Location.new(pubs.shuffle.first),
    Location.new(pubs.shuffle.first),
    Location.new(pubs.shuffle.first),
]

list_of_streets = [
    Location.new(streets.shuffle.first),
    Location.new(streets.shuffle.first),
    Location.new(streets.shuffle.first),
    Location.new(streets.shuffle.first),
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

def clear
    system "clear"
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

(0..4).each do |i|

crawlerman

clear

    puts "             
                      /                             /
                     /_____________________________/ |                             
         ,****.      |                            |  |
        {      }     |    #{list_of_pubs[i].name}                     
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

    printer("You have just entered '#{list_of_pubs[i].name}'")
    puts ""
    case i
    when 1
       chosen_hero.pub_drink1
    when 2
        chosen_hero.pub_drink2
    when 3
        chosen_hero.pub_drink3
    when 4
        chosen_hero.pub_drink4
    when 5
        chosen_hero.pub_drink5
    end

    clear

    
    case i
    when 1
        chosen_hero.pub_challenge1
    when 2
        chosen_hero.pub_challenge2
    when 3
        chosen_hero.pub_challenge3
    when 4
        chosen_hero.pub_challenge4
    when 5
        chosen_hero.pub_challenge5
    end


    puts chosen_hero.display_stats
    sleep(4)
    clear
    
    printer("You leave '#{list_of_pubs[i].name}' and start walking along #{list_of_streets[i].name}")

    puts ""

    chosen_hero.recharge
    clear

    chosen_hero.obstacle1

    puts chosen_hero.display_stats
    printer("You continue along #{list_of_streets[i].name} and head towards the next pub '#{list_of_pubs[i+1].name}'")

end