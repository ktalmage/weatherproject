# require "weatherproject/version"

# module Weatherproject
#   class Error < StandardError; end
#   # Your code goes here...
# end
require 'open uri'
require 'nokogiri'
require 'pry'

class Scraper

site = "https://weather.com/weather/tenday/l/e47fd31a467b7f589dadf3a26dc7d93dc3833b4e86b35b9465cf24f6c684523b"

page = Nokogiri::HTML(open(site))

# weather_array = []
results = page.css("table.twc-table").text

results.chomp(" ")


puts results
end