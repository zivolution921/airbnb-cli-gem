# Our CLI Controller

class AirbnbNYC::CLI

  def call
    list_deals
    goodbye
  end

  def list_deals
    puts "Today's Airbnb Deals in NYC:"
    @deals = AirbnbNYC::List.today

    # # Write data to CSV file
    # CSV.open("airbnb_listings.csv", "w") do |file|
    #   file << ["Listing Name", "Price", "Room Type", "Reviews", "Location"]

    #   name.length.times do |i|
    #     file << [name[i], price[i], details[i][0], details[i][1], details[i][2]]
    #   end
    # end
  end

  def goodbye
    puts "See you tommorow for more deals!!!"
  end

end
