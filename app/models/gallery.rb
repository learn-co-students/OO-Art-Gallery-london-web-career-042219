class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # Returns and array of all paintings in the gallery
    Painting.all.select do |painting_info|
      painting_info.gallery.name == self.name
    end.map {|info| info.title}
  end

  def artists
    # returns an array of all artists that have a painting in the gallery
    Painting.all.select do |painting_info|
      painting_info.gallery.name == self.name
    end
  end

  def artist_names
    # returns an array of names of artists that have a painting in the gallery
    Painting.all.select do |painting_info|
      painting_info.gallery.name == self.name
    end.map {|info| info.artist.name}
  end

  def most_expensive_painting
    # returns an instance of the most expensive painting in a gallery
    counter = 0
    highest = 0
    top_artists = []

    until counter == Painting.all.length do
      cost = Painting.all[counter].price
      artist_name = Painting.all[counter].artist

      if cost > highest
        highest = cost
        top_artists = artist_name
      end
      counter += 1
    end
    top_artists
  end

end
