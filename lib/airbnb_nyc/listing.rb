class AirbnbNYC::Listing # My model, it stores data.
  attr_reader :title, :price

  @@all = []
  def initialize(price:, title:)
    @title = title.gsub(/\s{2,}/, " ")
    @price = price.to_i
    @@all << self
  end

  def self.all
    @@all.sort_by(&:price).reverse!
  end

  def to_s
    "#{title} - $#{price}"
  end
end