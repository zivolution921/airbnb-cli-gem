class AirbnbNYC::CLI # It controls everything
  def call
    AirbnbNYC::Scraper.new.scrape
    puts AirbnbNYC::Listing.all
  end

  def titles
    AirbnbNYC::Scraper.new.scrape
    AirbnbNYC::Listing.all.each do |listing|
      puts listing.title
    end
  end
  def details
    AirbnbNYC::Scraper.new.scrape
    AirbnbNYC::Listing.all.each_with_index do |listing, index|
      puts "#{index+1} - #{listing}"
    end
    puts "Choose a number on the list:"
    chosen_index = $stdin.gets.to_i - 1
    listing = AirbnbNYC::Listing.all[chosen_index]
    puts "#{listing} - #{listing.details}"
  end

  def price
    call
    puts "Choose the lowest price for the range:"
    low = $stdin.gets.to_i
    puts "Choose the highest price for the range:"
    high  = $stdin.gets.to_i
    results = AirbnbNYC::Listing.price_between(low, high)
    puts results  
  end
end