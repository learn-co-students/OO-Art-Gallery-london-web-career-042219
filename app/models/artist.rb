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

  def paintings
    #Returns an array all the paintings by an artist
    Painting.all.select { |painting| painting.artist==self }
  end

  def galleries
    #Returns an array of all the galleries that an artist has paintings in
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    #Return an array of all cities that an artist has paintings in
    galleries.map {|gallery| gallery.city }
  end

  def self.total_experience
    # Returns an integer that is the total years of experience of all artists
    @@all.map {|x| x.years_experience }.sum
  end

  def self.most_prolific
      #Returns an instance of the artist with the highest amount of paintings per year of experience.
      max_count=0.0
      max_artist=nil
      @@all.each do |artist|

          curr_count = Painting.all.select { |painting| painting.artist==artist }.length / artist.years_experience.to_f

          if curr_count>max_count
              max_artist=artist
              max_count=curr_count
          end

      end

      max_artist

  end

  def create_painting( title, price, gallery )
# Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    painting.new( self, title, price, gallery )
  end

end
