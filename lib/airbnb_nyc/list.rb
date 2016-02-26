class Airbnb::List
  attr_accessor :name, :price, :details

  def self.scrape_list
    list = []

    list << self.scrape_airbnb
  end

  def self.scrape_airbnb
    # Store URL to be scraped
    url = "https://www.airbnb.com/s/New-York--NY--United-States"
    # Parse the page with Nokogiri
    page = Nokogiri::HTML(open(url, { "User-Agent" => "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36" }))

    list = self.new
    list.name = page.search('h3.h5.listing-name').text.strip
    ist.price = page.seach('span.h3.price-amount').text.strip
    list.details = page.search('div.text-muted.listing-location.text-truncate').text.strip

    list
  end

  def list_names
    name = []
    page.css('h3.h5.listing-name').each do |line|
      name << line.text.strip
    end
  end

  def list_price
    price = []
    page.css('span.h3.price-amount').each do |line|
      price << line.text
    end
  end

  def list_details
    details = []
    page.css('div.text-muted.listing-location.text-truncate').each do |line|
      details << line.text.strip.split(/ · /)
    end
  end

  # Write data to CSV file
CSV.open("airbnb_listings.csv", "w") do |file|
  file << ["Listing Name", "Price", "Room Type", "Reviews", "Location"]

  name.length.times do |i|
    file << [name[i], price[i], details[i][0], details[i][1], details[i][2]]
  end
end