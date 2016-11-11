get '/games' do
  search_query = params[:search_query]
  search_link = "http://www.giantbomb.com/api/search?api_key=#{api_key}&format=json&query=#{search_query}"

  results = JSON.parse(open(search_link).read)["results"]
  @games = results.select { |result| result["resource_type"] == "game" }

  erb :games
end
