class ApplicationController < ActionController::Base
  require "omniauth"
	require "omniauth-salesforce"
end

 use OmniAuth::Builder do
provider :salesforce, ENV['SALESFORCE_KEY'], ENV['SALESFORCE_SECRET']
end

 get '/authenticate' do
redirect "/auth/salesforce"
end
get '/auth/salesforce/callback' do
logger.info "#{env["omniauth.auth"]["extra"]["display_name"]}
authenticated"
env["omniauth.auth"]["extra"]["display_name"]
end
get '/auth/failure' do
params[:message]
end
get '/unauthenticate' do
session.clear
'Goodbye - you are now logged out'
end
