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

  def paintings #works
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries #works
    paintings.map {|paintings| paintings.gallery}
  end

  def cities #works
    galleries.map {|galleries| galleries.city}
  end

  def self.total_experience #works
    total_years = all.map {|artist| artist.years_experience}
    total_years.sum
  end

  def self.most_prolific

    # can I call the paintings_hash?
  end
    #artist with the highest number of paintings / years of experience. I have number of paintings per artist and number of experience per artist.


  def create_painting(title, price, gallery) #works
    Painting.new(title, price, self, gallery)
  end

end
