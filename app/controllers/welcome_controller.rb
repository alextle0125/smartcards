class WelcomeController < ApplicationController
	def index
		unless session[:user] == nil
			redirect_to user_path(session[:user])
		else
			render 'index'
		end
	end
end
