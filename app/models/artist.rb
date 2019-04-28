class Artist
  @@all = [] 

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    return @@all
  end

  def paintings
    return Painting.by_artist(self)
  end

  def galleries
    return paintings.map { |painting| painting.gallery }.reject{ |gallery| gallery == nil }.uniq
  end

  def cities
    return galleries.map { |gallery| gallery.city }
  end

  def self.total_experience
    @@all.sum { |artist| artist.years_experience }
  end

  def self.most_prolific
    paintings_by_artist = Painting.all.group_by { |painting| painting.artist }
    paintings_by_artist.each{ |artist, paintings| paintings_by_artist[artist] = (paintings.length)/(artist.years_experience) }
    return paintings_by_artist.max_by{ |artist, prolif| prolif }[0]
  end

end

