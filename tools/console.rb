require_relative '../config/environment.rb'





#scream = Painting.new("Scream", 500)
#flowers= Painting.new("Flowers", 200)

picasso = Artist.new("Picasso", 16)
banksy = Artist.new("Banksy", 22)
leo = Artist.new("Leonardo", 40)

louvre = Gallery.new("The Louvre", "Paris")
brit = Gallery.new("The Bristish Museum", "London")
vna = Gallery.new("The V&A", "London")
my_house = Gallery.new("My House", "London")

picasso.create_painting("smile",200,louvre)
banksy.create_painting("The Sky",1000,vna)
banksy.create_painting("The Moon",2000,vna)
leo.create_painting("Mona",100,vna)
banksy.create_painting("The Ground",1000,my_house)
leo.create_painting("Coma",101,my_house)

binding.pry

puts "Bob Ross rules."
