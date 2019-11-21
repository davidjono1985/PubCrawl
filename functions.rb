def get_pubs
    return [
    "The Sleazy Plover", "The Swanky Dank", "Chugbarfs Bar and Saloon", "Big Bertha's House Of Blues", 
    "The Swan and Fist", "The Moose Knuckle", "The Drunken Duck", "The Filthy Ibis", "The Jolly Taxpayer",
    "The Durries End", "The Elephant and Budgie", "The Jazz Cabbage", "The Ralph Bucket", "The Tickled Pheasant",
    "Twig & Giggleberries", "The Slippery Dipstick", "Finnegins Chinnegin", "The Greasy Spit Valve", "Lord Monkeybums", 
    "The Praying Mennis", "The Busted Football", "Haireola's","Nip 'n' Sip's","The Cat's Diddle", "The Wig and Pissle", 
    "The Drover's Sandwich", "The Goosey Gander", ]
end

def get_streets
    return [
    "Sesame Street", "Copperhead Road", "The Boulevard of Broken Dreams", "Baker Street","Route 66", "Penny Lane", "Ocean Avenue", 
    "Iamthe Highway", "Electric Avenue", "Abbey Road", "Madison Avenue", "Smith Street", "Thunder Road", "Exile On Main Street", "The Highway to Hell",
    "Ventura Highway", "Sunset Boulevard", "Yellow Brick Road", "Road to Nowhere", "The 8-mile", "Ocean Drive", "Devil Gate Drive", 
    "Holiday Road", "Australia Street" ]
    end



def get_drinks
    return [
    {
        option1: {
          text: "Pint of Lager",
          result: ["10", 20, -20, +10, +5, -5]
        }, 
        option2: {
        text: "Sensible glass of House Wine",
        result: ["10", 20, -20, +10, +5, -5]
    },
        option3: {
        text: "Spirit and Mixer Of Choice",
        result: ["10", 20, -20, +10, +5, -5]
    }, 
        option4: {
        text: "Jager bomb!",
        result: ["10", 20, -20, +10, +5, -5]
    },
    },  {   
            option1: {
            text: "Horn of Mead",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
            option2: {
            text: "Snifter of Port",
            result: ["10", 20, -20, +10, +5, -5]
        },
            option3: {
            text: "VCR – Vodka, Coke and Raspberry",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
            option4: {
            text: "Flaming Sambuca shot",
            result: ["10", 20, -20, +10, +5, -5]
        }
    },  {
            option1: {
            text: "Flagon of Ale",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
            option2: {
            text: "Carafe of Wine",
            result: ["10", 20, -20, +10, +5, -5]
            
        },
            option3: {
            text: "Smirny Double Black",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
            option4: {    
            text: "Shot of straight whisky like a bad-ass American cowboy",
            result: ["10", 20, -20, +10, +5, -5]
        }
    },  {
            option1: {
            text: "Pitcher of Warm beer",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
            option2: {
            text: "Champers! OOh lovely bubbly!",
            result: ["10", 20, -20, +10, +5, -5]
        },
            option3: {
            text: "I think it’s rum?",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
            option4: {
            text: "Shot of Absinthe (the real stuff that makes you hallucinate)",
            result: ["10", 20, -20, +10, +5, -5]
        }
    },  {
            option1: {
            text: "The dregs from the drip-tray’s served in a chilled Stein",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
            option2: {
            text: "Swig straight from the Goon Sack (Fruity Lexia makes you sexier)",
            result: ["10", 20, -20, +10, +5, -5]
        },
            option3: {
            text: "Long Island Ice-Tea (this is not real tea – remember what happened last time at your aunties’ birthday party!)",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
            option4: {
                text: "Tequila suicide – snort the salt, down the shot and squeeze the lemon in your eye 
                - TEQUILLA! Da da da da daaa da da da",
                result:["10", 20, -20, +10, +5, -5]
            }
    }
]
end 




# list_of_obstacles[0][:question], list_of_obstacles[0][:option1][:text], list_of_obstacles[:option1][:result]

def get_obstacles
    return [
    {
        question: "On the way to the next pub you walk past a homeless busker playing spoons to the beat of Thunderstruck.  Do you:",
        option1: {
            text: "Walk past and ignore him",
            result: ["0", 20, -20, +10, +5, -5]
        }, 
        option2: {
            text: "Start clapping on the offbeat and jam out with him",
            result: ["0", 20, -20, +10, +5, -5]
        },
        option3: {
            text: "Throw money in his torn-up buskers hat",
            result: ["5", 20, -20, +10, +5, -5]
        }, 
        option4: {
            text: "Buy him a sandwich from the 7-11",
            result: ["5", 20, -20, +10, +5, -5]
        },
    }, {
        question: "A gaggle of hen’s walk past – they are on a pub crawl of their own. The maid of honour stops you in the 
        middle of the street and asks you to take a photo of her tribe for her Instagram story.  Do you:",
        option1: {
            text: "Accept",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
        option2: {
            text: "Decline",
            result: ["10", 20, -20, +10, +5, -5]
        },
        option3: {
            text: "Say yes, but take a video instead cuz you're a funny sob",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
        option4: {
            text: "Steal her camera, run off laughing and throw it in the local river",
            result: ["10", 20, -20, +10, +5, -5]
        },
    }, {
        question: "You encounter a group of sun-burnt tradies who are taking it in turns to regale each other with quotes 
        from their favourite cartoons. 
        Suddenly one of them looks at you and yells out “DENTAL PLAN!” to which you reply:?",
        option1: {
            text: "Peter Griffin – number 1 dad",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
        option2: {
            text: "Bender is hilarious - is Futurama still running?",
            result: ["10", 20, -20, +10, +5, -5]
        },
        option3: {
            text: "Lisa needs braces",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
        option4: {
            text: "Shuttup Cartman",
            result: ["10", 20, -20, +10, +5, -5]
        },
    }, {
        question: "You saunter past a cohort of liberal student hipsters - they are standing outside Hungry Jacks protesting the lack 
        of beard oil options in their bathrooms. 
        Do you:",
        option1: {
            text: "Ignore them",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
        option2: {
            text: "Walk past shaking your head",
            result: ["10", 20, -20, +10, +5, -5]
        },
        option3: {
            text: "Enthusiastically join their protest",
            result: ["10", 20, -20, +10, +5, -5]
        }, 
        option4: {
            text: "Spend 15 minutes explaining to them they don’t know what real issues are. ",
            result: ["10", 20, -20, +10, +5, -5]
        }
    },
]

end 


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
    
    puts "-----------------------------The ultimate Pub Crawl adventure game!------------------------------------------" 
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