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
    temp = Painting.paintings_hash
    temp.max_by {|artist, painting| temp[artist] = painting.count.to_f / artist.years_experience}[0]
    #the paintings hash that I created in painting will group by the info by artist. So we get a hash with the artist and then the artist's paintings. Now we are going to max_by iterating over that hash saying we iterate over each artist and their painting and now we want the artist that will be returned to be the one with the highest count for painting/yrsofexperience. 
    #you can put a max by at the end of it, or you could just max by instead of each. The max by will give you an array of the artist with all the paintings and all we want is the artist itself so this is why I've put 0 next to it, to find the first object of the array, because the array is [Artist[paintings]].

    # max_count = 0
    # Artist.all.each {|artist|}
    # current_count =
    # can I call the paintings_hash?
  end
    #artist with the highest number of paintings / years of experience. I have number of paintings per artist and number of experience per artist.


  def create_painting(title, price, gallery) #works
    Painting.new(title, price, self, gallery)
  end

end
