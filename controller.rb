system "clear"

# List of ruby gems
require 'tty-prompt'
require 'tty-table'
require 'artii'
require 'colorize'

#list of other required files

require './crawlerman.rb'
require './classes.rb'
require './functions.rb'


pubs = get_pubs()
streets = get_streets()
list_of_pubs = []
list_of_drinks = get_drinks()
list_of_obstacles = get_obstacles()




(0..4).each do |index|

    drink_set = list_of_drinks[index]
    drinks = [
        Drink.new(drink_set[:option1][:text], drink_set[:option1][:result]),
        Drink.new(drink_set[:option2][:text], drink_set[:option1][:result]),
        Drink.new(drink_set[:option3][:text], drink_set[:option1][:result]),
        Drink.new(drink_set[:option4][:text], drink_set[:option1][:result])
    ]


            obstacle = list_of_obstacles.shuffle!.slice(0)
        


        obstacle_decisions = [
        Decision.new(obstacle[:option1][:text], obstacle[:option1][:result]),
        Decision.new(obstacle[:option2][:text], obstacle[:option2][:result]),
        Decision.new(obstacle[:option3][:text], obstacle[:option3][:result]),
        Decision.new(obstacle[:option4][:text], obstacle[:option4][:result])
    ]
     
    obstacle = Action.new(obstacle[:question], obstacle_decisions)
   

    #add venue to list of pubs
    venue = Venue.new(pubs.shuffle.first,streets.shuffle.first, drinks, obstacle)
    list_of_pubs.push venue


  

end 


kev = Hero.new("Kev","340","90","90")
douggie = Hero.new("Douggie","250","70","80") 
robbo = Hero.new("Robbo","220","100","60")
bazza = Hero.new("Bazza","120","50","50")

intro_banner()

quit = false 
loop do
                
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
            
            table = TTY::Table.new ['NAME','DESCRIPTION'],[['Kev','Kevs leader of the pack - cashed up and full of street smarts'],
            ['Douggie', 'Douggies a champ - jack of all trades master of nothing'], 
            ['Robbo', 'Where Robbo lacks in sure-footedness, he makes it up with SHWAGGGG'],
            ['Bazza', 'Bazza is the personification of life on hard mode.  Good luck']
         ]
                                 
            puts table.render(:unicode)           
            puts""
   
            

            
        when "3" 
            clear
            banner("CHOOSE YOUR HERO!!")
                        
            # prompt.select("Which of our local hero's do you choose?", %w(Kev Douggie Robbo Bazza))

            printer "Now choose Your Hero!!!\n\n 1. Kev"
                puts""
                puts "#{kev.display_stats}"
            printer "2. Dougie"    
                puts""
                puts "#{douggie.display_stats}"
            printer "3. Robbo"
                puts""
                puts "#{robbo.display_stats}"
            printer "4. Bazza "
            puts""
            puts "#{bazza.display_stats}"  
            
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

            printer ("Bloody good choice! You've chosen #{chosen_hero.name}!!\n")
            
            sleep(1)

            puts ""

            puts chosen_hero.display_stats

            sleep(2)
            
            puts ""

            printer "Let's get crawling!!!!"

            sleep(1)

            list_of_pubs.each do |venue|
            crawlerman

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
                printer ("You have just entered '#{venue.name}'")
                puts ""
                printer "What would you like to drink?"
                puts""
                selected_drink = do_step(venue.method(:display_menu), venue.drinks)


            # stats adjusted accordingly
            chosen_hero.imbibe(selected_drink)

            clear 

            puts chosen_hero.display_stats
            sleep(2)
                                  
            printer ("You leave '#{venue.name}' and start walking along #{venue.street}")

            puts ""
        
            puts chosen_hero.display_stats        
            chosen_hero.recharge()
            puts chosen_hero.display_stats
            
            clear
            
            selected_obstacle_decision = do_step(venue.method(:display_obstacle), venue.obstacle.decisions)
            #make the decision
            chosen_hero.make_a_decision(selected_obstacle_decision)

            puts chosen_hero.display_stats()

               
            puts ("You continue along #{venue.street} and head towards the next pub")

            end
        else 
            puts "unrecognized request"
        end

end 

# prompt = TTY::Prompt.new

