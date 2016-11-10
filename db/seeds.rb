require 'uri'
require 'Net/HTTP'

Game.delete_all

api_key = "9a57f24d398e4c62b1abf3cd6cc029de05a7c006"
search_query = String.new

loop do
  puts "Welcome to the VGDB"
  puts "-------------------"
  puts "-------------------"
  puts "Enter a game title to search for:"
  puts "(or enter 'quit' to exit)"
  search = gets.chomp
  break if search == "quit"

  search_link = "http://www.giantbomb.com/api/search/?api_key=#{api_key}&format=json&query=#{search_query}"

  results = JSON.parse(Net::HTTP.get(URI(search_link)))["results"].symbolize_keys!
  binding.pry
end
