class SessionsController < ApplicationController
	def new
		@session = User.new
		render 'new'	
	end

	def create
		@user = User.find_by_email(params[:username_or_email]) || User.find_by_username(params[:username_or_email])
		if @user && @user.authenticate(params[:password])
			session[:user] = @user.id
			redirect_to user_path(@user.id)
		elsif @user
			@error = "Incorrect password"
			render 'new'
		else
			@error = "Invalid username or email"
			render 'new'
		end
	end

	def destroy
		session.clear
		redirect_to root_path
	end
end
