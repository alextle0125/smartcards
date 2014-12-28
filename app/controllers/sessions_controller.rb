class SessionsController < ApplicationController
	def new
		@session = User.new
		render 'new'	
	end

	def create
		@user = User.find_by_email(params[:username_or_email]) || User.find_by_username(params[:username_or_email])
		if @user && @user.authenticate(params[:password])
			session[:user] = @user
			redirect_to root_path
		else
			redirect_to login_path
		end
	end
end
