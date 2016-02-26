# Our CLI Controller

class AirbnbNyc::CLI

  def call
    list_deals
    goodbye
  end

  def list_deals
    puts "Today's Airbnb Deals in NYC:"
    @deals = 
  end

end