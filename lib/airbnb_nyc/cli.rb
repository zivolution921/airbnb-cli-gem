class AirbnbNYC::CLI # It controls everything
  def call
    AirbnbNYC::Scraper.new.scrape
    puts AirbnbNYC::Listing.all
  end

  def titles
    AirbnbNYC::Scraper.new.scrape
    AirbnbNYC::Listing.all.each do |list|
      puts list.title
    end
  end
end