require './classes/hero_class.rb'
require './classes/location_class.rb'

#instances
kev = Hero.new("Kev","150","90","90")
douggie = Hero.new("Douggie","220","70","80") 
robbo = Hero.new("Jimbo","270","100","60")
bazza = Hero.new("Bazza","120","50","50")

#Pubs and Streets
pub1 = Location.new("The Swanky Dank")

puts pub1.name


    puts "Welcome to the ultimate PubCrawl adventure game! 

            1. Rules
            2. View Hero's
            3. Play
                                "

    answer = gets.chomp
      
        case answer
        when "1"
            puts "THE RULES ARE SIMPLE!"     
        when "2"
            kev.display_stats
            puts ""
            douggie.display_stats
            puts""
            robbo.display_stats
            puts""
            bazza.display_stats
        when "3" 
            puts "You have just entered #{pub1.name}"
        
        else 
            puts "unrecognized request"
        end
    

    
    
















