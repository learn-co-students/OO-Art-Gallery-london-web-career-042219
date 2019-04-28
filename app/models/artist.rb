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
    @@all.max_by { |artist| (Painting.by_artist(artist).length).to_f/(artist.years_experience)}
  end

  def create_painting(title, price, gallery=nil)
    Painting.new(title, price, self, gallery)
  end
end

