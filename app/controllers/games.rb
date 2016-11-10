get '/games' do
  search_query = params[:search_query]
  search_link = "http://www.giantbomb.com/api/search?api_key=#{api_key}&format=json&query=#{search_query}"
  # binding.pry
  @games = JSON.parse(open(search_link).read)["results"][0..8]

  erb :games
end

