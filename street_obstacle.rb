class Hero
    
    
    
    def obstacle1()
        printer "
            On the way to the next pub you walk past a homeless busker playing spoons to the beat of Thunderstruck.  Do you:
        	1. Walk past
        	2. Start clapping on the offbeat and jam out with him
            3. Throw money in his torn-up buskers hat.
        	4. Buy him a sandwich from the 7-11
        "
        answer = gets.chomp
        case answer
        when "1"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "2"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "3"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "4"
        stats_adjust(1, 1, 1, 1, 1, 1)
        end 

    end
    def obstacle2()
        printer "
        A gaggle of hen’s walk past – they are on a pub crawl of their own. The maid of honour stops you in the 
        middle of the street and asks you to take a photo of her tribe for her Instagram story:
        1.	Accept
        2.	Decline
        3.	Say yes but take a video instead
        4.	Steal her camera and run off laughing
        
        "
        answer = gets.chomp
        case answer
        when "1"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "2"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "3"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "4"
        stats_adjust(1, 1, 1, 1, 1, 1)
        end 

    end

    def obstacle3()
        printer "
            You encounter a group of rival bogans arguing about the merits of Ford’s vs Holdens  – they ask you to choose what you prefer.  You answer:
            1.	Fords
            2.	Holdens
            3.	Nissan Micra's belong on Bathurst
            4.	Give us some of your Bundy brah
        
        "
        answer = gets.chomp
        case answer
        when "1"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "2"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "3"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "4"
        stats_adjust(1, 1, 1, 1, 1, 1)
        end 

    end
    def obstacle4()
        printer "
        You saunter past a cohort of liberal student hipsters - they are standing outside Hungry Jacks protesting the lack of beard oil options in their bathrooms. 
        Do you:
        1.	Ignore them
        2.	Walk past shaking your head
        3.	Enthusiastically join their protest 
        4.	Spend 15 minutes explaining to them they don’t know what real issues are. 
        
        "
        answer = gets.chomp
        case answer
        when "1"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "2"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "3"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "4"
        stats_adjust(1, 1, 1, 1, 1, 1)
        end 

    end
    def obstacle5()
        printer "
            **BOSS LEVEL MONSTER**
            A crowd of what could only be 18 year olds, stop you and start speaking to you using indecipherable gen Z babble.  Do you:
        	1. Walk past
        	2. wierd flex but Ok
            3. Yeet
        	4. Nice one Boomer
        "
        answer = gets.chomp
        case answer
        when "1"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "2"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "3"
        stats_adjust(1, 1, 1, 1, 1, 1)
        when "4"
        stats_adjust(1, 1, 1, 1, 1, 1)
        end 

    end
end 