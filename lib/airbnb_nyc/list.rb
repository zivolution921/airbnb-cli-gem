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