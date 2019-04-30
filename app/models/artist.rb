# * `Artist.most_prolific`
#   * Returns an `instance` of the artist with the highest amount of paintings per year of experience.




class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def painting
    Painting.all.select { |painting| painting.artist == self }
  end

  def gallery
    painting.map { |painting| painting.gallery }
  end

  def cities
    painting.map {|painting| painting.gallery.city}
  end

  def self.total_experience
    @@all.map{|artist| artist.years_experience}.sum
  end

  def painting_count
    painting.length
  end

  def self.years_experience
    Artist.select {|artist| artist.years_experience}
  end

  def paint_per_year
    painting_count.to_f/self.years_experience
  end

  def self.most_prolific
    @@all.max_by{|artist| artist.paint_per_year}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end


end
