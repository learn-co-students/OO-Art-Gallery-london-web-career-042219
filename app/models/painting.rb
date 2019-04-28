class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price #works
    total = all.map {|price| price.price} #if I'm already in a class method, do I do all map or Paintings.all.map?
    total.sum
  end

  def self.paintings_hash
    artists_paintings = {}
    Painting.all.each do |painting|
      if artists_paintings[painting]
        artists_paintings[painting] += 1
      else
        artists_paintings[painting] =1
      end
    end
    artists_paintings
  end
end
