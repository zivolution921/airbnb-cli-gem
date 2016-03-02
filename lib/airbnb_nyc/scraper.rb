class AirbnbNYC::Scraper # It makes models
  
  def scrape
    # load the page
    # for each HTML listing
    # create an actual Listing instance with that data
    listings = []

    # Store URL to be scraped
    url = "https://www.airbnb.com/s/New-York--NY--United-States"
    # Parse the page with Nokogiri
    page = Nokogiri::HTML(open(url, { "User-Agent" => "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36" }))


    listing_name = page.css('h3.h5.listing-name').each do |line|
      listings << line.text.strip
    end

    listings

    # listings = 10.times.collect do |i|
    #   listing = AirbnbNYC::Listing.new
    #   listing.title = "Listing #{i}"
    #   listing
    # end
  end



end
