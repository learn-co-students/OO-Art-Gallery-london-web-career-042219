class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    return @@all
  end

  def paintings(artist=nil) #optionally includes Artist for Paintings by artist at self
    if artist == nil
      return Painting.by_gallery(self)
    else
      return Painting.by_gallery(self).select{ |painting| painting.artist == artist}
    end
  end

  def artists
    return Painting.by_gallery(self).map { |painting| painting.artist}.uniq
  end

  def artist_names
    return artists.map { |artist| artist.name}
  end

  def most_expensive_painting
    Painting.by_gallery(self).max_by { |painting| painting.price }
  end
end
