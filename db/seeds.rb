require 'uri'
require 'Net/HTTP'

Game.delete_all

link = "http://www.giantbomb.com/api/game/3030-4725/?api_key=9a57f24d398e4c62b1abf3cd6cc029de05a7c006&format=json"
game_data = JSON.parse(Net::HTTP.get(URI(link)))
results = game_data["results"].symbolize_keys

game = Game.create!(results)
