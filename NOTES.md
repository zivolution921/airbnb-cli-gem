- A command line interface to analyze data and draw insights on the rental market for airbnb in NYC 

executable in the bin
user types airbnb-nyc



1. When my program starts, go to airbnb-nyc and get all the data

  bin/airbnb-nyc
    CLI.new.call

    When a CLI is instantiate
      Make a AirbnbScraper instance
        
        AirbnbNYC::Scraper.new.scrape


        An AirbnbScraper instance should have a #scrape method
        The #scrape method should make a AirbnbNYC::Listing instance for each instance it scrapes.
      Whenever an AirbnbNYC::Listing object is instantiated the AirbnbNYC::Listing class should keep track of them all in @@all instance var
    When the user types list
      AirbnbNYC::Listing.all.each do |list|
        puts list.title
      end


    AirbnbScraper.new.scrape 
    AirbnbNYC::List.all #=> [#<List>, #<List>, #<List>]

User Interaction
  ask to lists listings, then they should be able to see more details about a listing from the list by entering its index/id
  ask them for a location or a price range and then filter the listings you scraped