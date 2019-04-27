class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # Returns an array of all paintings by said artist
    Painting.all.select do |painting_info|
      painting_info.artist.name == self.name
    end.map {|info| info.title}
  end

  def galleries
    #Returns array of galleries said artist has paintings in
    Painting.all.select do |painting_info|
      painting_info.artist.name == self.name
    end.map {|info| info.gallery.name}
  end

  def cities
    # Return array of cities said artist has paintings in
    Painting.all.select do |painting_info|
      painting_info.artist.name == self.name
    end.map {|info| info.gallery.city}
  end

  def total_experience
  end

  def self.total_experience
    # returns an integer that is total years experience of all artists.
    self.all.map{|info| info.years_experience}.sum
  end

  def self.most_prolific
    # Returns an instance of artist with the highest ammount of paintings per year experience
    # Find artists total number of paintings
    # Find Artists total years expereience
    # total number of paintings / total years experience
    # return artist with highest answer

    counter = 0
    highest = 0
    top_artists = []

    until counter == self.all.length do
      years_exp = self.all[counter].years_experience
      artist_name = self.all[counter]
      paintings_count = Painting.all.select {|painting_info| painting_info.artist.name == self.all[counter].name}.map {|info| info.title}.length
      years_divided_paintings = years_exp / paintings_count

      if years_divided_paintings > highest
        highest = years_divided_paintings
        top_artists = artist_name
      end

      counter += 1
    end
    top_artists
  end

  def create_painting(title, price, gallery)
    # create a new painting using the arguments passed for the said artist
    Painting.new(title, price, self, gallery)
  end
end
