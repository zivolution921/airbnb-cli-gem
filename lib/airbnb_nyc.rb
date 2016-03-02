require 'open-uri'
require 'nokogiri'
require 'pry'

module AirbnbNYC
end

require_relative "./airbnb_nyc/version"
require_relative './airbnb_nyc/cli'
require_relative './airbnb_nyc/listing'
require_relative './airbnb_nyc/scraper'
