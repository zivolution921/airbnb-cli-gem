module AirbnbNYC
  class Scraper # It makes models

    def scrape
      # load the page
      # for each HTML listing
      # create an actual Listing instance with that data

      # Store URL to be scraped
      url = "https://www.airbnb.com/s/New-York--NY--United-States"
      # Parse the page with Nokogiri
      page = Nokogiri::HTML(
        open(
          url, 
          { "User-Agent" => "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36" }
        )
      )


      listing_name = page.css('.listing').each do |listing|
        amount = listing.css('.price-amount').text.strip
        name = listing.css('.listing-name').text.strip
        details = listing.css('.listing-location a').text.strip
        Listing.new(title: name, price: amount, details: details)
      end
    end
  end
end
