get '/games' do
  search_query = params[:search_query]
  search_link = "http://www.giantbomb.com/api/search?api_key=#{api_key}&format=json&query=#{search_query}"
  binding.pry
  @games = JSON.parse(Net::HTTP.get(URI(search_link)))["results"]
  erb :games
end
