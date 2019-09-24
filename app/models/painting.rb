class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(artist, title, price, gallery )
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
# Returns an integer that is the total price of all paintings
    @@all.map {|x| x.price }.sum
  end

end
