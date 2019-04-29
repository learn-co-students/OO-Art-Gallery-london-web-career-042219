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

  def paintings  #DONE
    #returns an array of all th paintings by an artist
    Painting.all.select {|painting| painting.artist.name == self.name}
    #binding.pry
  end

  def galleries #DONE
    #returns an array of all the galleries an artist has paintings in
    paintings.map {|paintings| paintings.gallery}  #QU: is this calling paintings on self implicitly?!
    #binding.pry
  end

  def cities
  #returns an array of the cities an artist has paintings in
    galleries.map {|gallery| gallery.city}.uniq
  end

 def self.total_experience
   #retuens an integer total of all the years experience of the artists combined 
   total = 0
   self.all.each {|painting| total += painting.artist }
   total
 end

 def self.most_prolific
   #retuns the instance of the artist who has most paintings / yr or experience
   #Painting.all.sort {|a,b|a.artist.name <=> b.artist.name}
   artists = Painting.all.map {|a| a.artist}
   names = artists.map {|x| x.name}
   freq = names.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
   count =names.max_by { |names| freq[names]}.values.sort.pop
   
   binding.pry
 end

 def create_painting(title,price,gallery)
    title = Painting.new(title,price)
    title.gallery = gallery
    title.artist = self
    
 end




end







