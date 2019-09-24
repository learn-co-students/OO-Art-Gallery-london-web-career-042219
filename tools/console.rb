require_relative '../config/environment.rb'

moma = Gallery.new("Galeria", "NYC")
tate = Gallery.new("Tate", "London")

ines = Artist.new("Ines", 5)
lauren = Artist.new("Lauren", 6)
pat = Artist.new("Pat", 7)
ross = Artist.new("Ross", 8)

white = Painting.new("White", 100, ines, moma)
orange = Painting.new("Orange", 150, ines, moma)
black = Painting.new("Black", 200, lauren, tate)
pink = Painting.new("Pink", 300, pat, moma)
green = Painting.new("Green", 400, ross, tate)


binding.pry

puts "Bob Ross rules."
