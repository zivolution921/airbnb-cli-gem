# return instances of listings
class AirbnbNYC::Listing # My model, it stores data.
  attr_reader :title, :price, :details

  @@all = []
  def initialize(price:, title:, details: "")
    @title = title.gsub(/\s{2,}/, " ")
    @price = price.to_i
    @details = details.gsub(/\s{2,}/, " ")
    @@all << self
  end

  def self.all
    @@all.sort_by(&:price)
  end

  def self.price_between(low, high)
    all.select do |listing|
      listing.price.between?(low, high)
    end 
  end

  def save
    @@all << self
  end

  def to_s
    "#{title} - $#{price}"
  end
end