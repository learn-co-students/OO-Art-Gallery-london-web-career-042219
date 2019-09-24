require_relative '../config/environment.rb'


 marcus = Artist.new("Marcus", 52 )
 banksy = Artist.new("Banksy", 35 )

 tate = Gallery.new("Tate Modern", "London")
 national = Gallery.new("The national portrait gallery", "London")

 scribble = Painting.new( marcus, "The scribble", 1000, tate )
 crazy = Painting.new( marcus, "The crazy one", 900, tate )
 wobble = Painting.new( marcus, "Wibble Wobble", 1100, tate )
 zany = Painting.new( marcus, "Zany", 500, national )
 wall = Painting.new( banksy, "A painting on a wall", 50000, national )
 
binding.pry

puts "Bob Ross rules."
