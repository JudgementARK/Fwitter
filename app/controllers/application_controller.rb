require './config/environment'
require './app/models/fweet'
require 'pry'
class ApplicationController < Sinatra::Base
	configure do
		set :public_folder, 'public'
		set :views, 'app/views'
	end
	get '/' do
		@fweets =  Fweet.all_messages
		erb :fweets
	end
	post '/fweets' do
		new_fweet = Fweet.new(params[:user],params[:message])
		redirect ('/')
	end
end