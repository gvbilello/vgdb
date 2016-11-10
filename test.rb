require 'uri'
require 'Net/HTTP'
require 'json'
require 'pry'
require 'pry-byebug'

loop do
  puts "Welcome to the VGDB"
  puts "-------------------"
  puts "-------------------"
  puts "Enter a game title to search for:"
  puts "(or enter 'quit' to exit)"

  search_query = gets.chomp
  break if search_query == "quit"

  search_link = "http://www.giantbomb.com/api/search/?api_key=#{api_key}&format=json&query=#{search_query}"

  results = JSON.parse(Net::HTTP.get(URI(search_link)))["results"]

  puts "Found the following games:"

  indx = 0
  while indx < results.length
    puts "[#{indx}] - #{results[indx]["name"]}"
    indx += 1
  end

  puts "Which game would you like more information about?"
  puts "(please enter the corresponding index number)"
  game_indx = gets.chomp.to_i

  game = results[game_indx]
  puts "-------------------"
  puts "-------------------"
  puts "What information would you like?"
  game.each do |key, value|
    puts key
  end
  info_topic = gets.chomp
  puts game[info_topic]
  binding.pry
end
