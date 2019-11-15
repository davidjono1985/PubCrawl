

# methods

def pub_drink()
puts "What would you like to drink
1. Pint $10
2. Spirit $10 
3. Shots! Shots! Shots! $10
6. Bartenders choice" 

answer = gets.chomp

case answer
when "1"
    @cash = @cash - 10

end 
end 





