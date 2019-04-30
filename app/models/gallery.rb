class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def painting
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artist
    painting.map {|painting| painting.artist}
  end

  def artist_name
    artist.map {|artist| artist.name}
  end

  def most_expensive_painting
    painting.max_by {|painting| painting.price}
  end

end
