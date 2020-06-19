require_relative '../config/environment.rb'

### One Artist >>>> Many Paintings <<<< One Gallery ###

### Artist Tests ###
van_gogh = Artist.new("Vincent van Gogh", 37)
picasso = Artist.new("Pablo Picasso", 91)
monet = Artist.new("Claude Monet", 86)
da_vinci = Artist.new("Leonardo da Vinci", 67)

### Gallery Tests ###
louvre = Gallery.new("Louvre", "Paris")
guggenheim = Gallery.new("Guggenheim Museum", "New York")
modern_art = Gallery.new("The Museum of Modern Art", "London")

### Painting Tests ###
sunflowers = Painting.new("Sunflowers", 550000, van_gogh, louvre)
starry_night = Painting.new("The Starry Night", 10000, van_gogh, guggenheim)
cafe_night = Painting.new("Cafe Terrace at Night", 7500, van_gogh, modern_art)

guernica = Painting.new("Guernica", 3075, picasso, louvre)
les_demoiselles = Painting.new("Les Demoiselles a'Avignon", 7500, picasso, guggenheim)
old_guitarist = Painting.new("The Old Guitarist", 9000, picasso, modern_art)

water_lily = Painting.new("The Water Lily Pond", 23000, monet, louvre)
poppies = Painting.new("Poppies", 12000, monet, guggenheim)
women_in_garden = Painting.new("Women in the Garden", 15000, monet, modern_art)

mona_lisa = Painting.new("Mona Lisa", 17000, da_vinci, louvre)
last_supper = Painting.new("The Last Supper", 19350, da_vinci, guggenheim)
red_man = Painting.new("Portrait of a Man in Red Chalk", 13750, da_vinci, guggenheim)

### Other Tests ###


binding.pry

puts "Mischief Managed!"
