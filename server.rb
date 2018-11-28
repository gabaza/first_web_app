require 'sinatra'


get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favorites' do
  @fav_links = ["http://www.twitter.com", "http://www.facebook.com"]
  erb :favorite
end

get '/' do
  redirect to('/home')
end

get '/gallery' do
  redirect to('/portfolio')
end
