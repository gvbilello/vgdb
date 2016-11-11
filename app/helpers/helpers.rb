def platforms(game)
  systems = game["platforms"].map do |platform|
    platform["name"]
  end

  return systems.join(", ")
end

def game_api_url(game)
  game["api_detail_url"] + "&api_key=" + api_key
end

def logged_in?
  !!session[:user_id]
end

def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def is_current_user?
  return false unless (current_user && logged_in?)
  current_user.id == @user.id
end

def require_user
  redirect '/' unless logged_in?
end
