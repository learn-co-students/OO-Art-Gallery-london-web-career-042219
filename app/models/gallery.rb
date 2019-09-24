class Gallery

  attr_reader :name, :city

  @@all =[] #works

  def initialize(name, city) #works
    @name = name
    @city = city
    @@all << self
  end

  def self.all #works
    @@all
  end

  def paintings #works
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists #works
    paintings.map {|painting| painting.artist}
  end

  def artist_names #works
    artists.map {|artist| artist.name}
  end

  def most_expensive_painting #works
    paintings.max_by {|painting| painting.price}
  end

end
