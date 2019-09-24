class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price #Returns an integer that is the total price of all paintings
    total = 0
    self.all.each {|painting| total += painting.price }
    total
  end


end
