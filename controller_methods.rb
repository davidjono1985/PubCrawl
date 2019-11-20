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
