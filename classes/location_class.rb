

class Location

    attr_reader :name

    def initialize(name)
    @name = name
    end

def embibe
end



end

pubs = [
    "The Sleazy Plover", "The Swanky Dank", "Chugbarfs Bar and Saloon", "Big Bertha's House Of Blues", 
    "The Swan and Fist", "The Dirty Moose Knuckle", "The Drunken Duck", "The Filthy Ibis", "The Jolly Taxpayer",
    "The Durries End", "The Elephant and Budgie", "The Jazz Cabbage", "The Gainfully Employed Poet", "The Ralph Bucket", 
    "Twig & Giggleberries", "The Slippery Dipstick", "Finnegins Chinnegin", "The Greasy Spit Valve", "Lord Monkeybums", "The Praying Mennis", 
    "The Busted Football", "Haireola's","Nip & Sip's","The Cat's Diddle", "The Wig and Pissle",  ]

streets = [
    "Sesame Street", "Copperhead Road", "The Boulevard of Broken Dreams", "Baker Street","Route 66", "Penny Lane", "Ocean Avenue", 
    "Iamthe Highway", "Electric Avenue", "Abbey Road", "Madison Avenue", "Smith Street", "Thunder Road", "Main Street", "the Highway to Hell",
    "Ventura Highway", "Sunset Boulevard", "Yellow Brick Road", "Road to Nowhere", "accross the 8-mile", "Ocean Drive", "Devil Gate Drive", "Holiday Road"  ]

pub1 = Location.new(pubs.sample)

puts "You are now entering #{pub1.name}"

