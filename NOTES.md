- A command line interface to analyze data and draw insights on the rental market for airbnb in NYC 

user types airbnb-nyc

show list of apartments including:
1. Listing Name
2. Price
3. Room Type
4. Reviews
5. Location


1. When my program starts, go to airbnb nyc and get all the data

  bin/airbnb-nyc
    CLI.new.call

    When a CLI is instantiate
      Make a AirbnbScraper instance
        
        AirbnbNYC::Scraper.new.scrape


        An AirbnbScraper instance should have a #scrape method
        The #scrape method should make a AirbnbNYC::Listing instance for each instance it scrapes.
      Whenever an AirbnbNYC::Listing object is instantiated the AirbnbNYC::Listing class should keep track of them all in @@all instance var
    When the user types list
      AirbnbNYC::List.all.each do |list|
        puts list.title
      end


    AirbnbScraper.new.scrape 
    AirbnbNYC::List.all #=> [#<List>, #<List>, #<List>]