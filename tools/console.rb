require_relative '../config/environment.rb'
artist1 = Artist.new("Van Gogh", 10)
artist2 = Artist.new("Michelangelo", 14)
artist3 = Artist.new("Botticelli", 8)

gallery1 = Gallery.new("The Met", "New York City")
gallery2 = Gallery.new("Tate", "London")

painting1 = Painting.new("Le Mis",10000,artist1,gallery1)
painting2 = Painting.new("Happy Trees",5000,artist1)
painting3 = Painting.new("Sad Trees",200,artist2,gallery2)
painting4 = Painting.new("Sadder Trees",250,artist2,gallery1)
painting5 = Painting.new("Literal Gold Bullion",150000,artist3,gallery2)
painting6 = Painting.new("Miserable Trees",250,artist2,gallery2)


binding.pry

puts "Bob Ross rules."
