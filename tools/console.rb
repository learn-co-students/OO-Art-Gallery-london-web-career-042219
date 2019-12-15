require_relative '../config/environment.rb'
vangogh = Artist.new("Van Gogh", 10)
michelangelo = Artist.new("Michelangelo", 14)
botticelli = Artist.new("Botticelli", 8)

newyorkmet = Gallery.new("The Met", "New York City")
tatelondon = Gallery.new("Tate", "London")

painting1 = Painting.new("Le Mis",10000,vangogh,newyorkmet)
painting2 = Painting.new("Happy Trees",5000,vangogh)
painting3 = Painting.new("Sad Trees",200,michelangelo,tatelondon)
painting4 = Painting.new("Sadder Trees",250,michelangelo,newyorkmet)
painting5 = Painting.new("Literal Gold Bullion",150000,botticelli,tatelondon)
painting6 = Painting.new("Miserable Trees",250,michelangelo,tatelondon)


binding.pry

puts "Bob Ross rules."
