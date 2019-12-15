class Painting

  attr_reader :title, :price, :artist
  attr_accessor :gallery

  @@all = []

  def initialize(title, price, artist, gallery=nil)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.by_artist(artist)
    return @@all.select { |painting| painting.artist == artist }
  end

  def self.by_gallery(gallery)
    return @@all.select { |painting| painting.gallery == gallery }
  end

  def self.total_price
    @@all.sum{ |painting| painting.price }
  end

end
