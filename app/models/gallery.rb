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

  def artists   
    artworks = Painting.all.select {|painting| painting.gallery == self}
    artworks.map {|art| art.artist}.uniq
  end

  def artist_names #DONE!
    artworks = Painting.all.select {|painting| painting.gallery == self}
    artworks.map {|art| art.artist.name}.uniq
  end


  def most_expensive_painting
  #Returns an instance of the most expensive painting in a gallery
    artworks = Painting.all.select {|painting| painting.gallery == self}
    binding.pry
    artworks.sort {|a,b| a.price <=> b.price}[-1]
  end


end
