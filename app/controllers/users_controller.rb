class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if User.find_by_email(params[:user][:email])
			@error = "Email has already been taken"
			render 'new'
		elsif User.find_by_username(params[:user][:username])
			@error = "Username has already been taken"
			render 'new'
		elsif @user.save
			session[:user] = @user
			redirect_to root_path
		end
	end

	private

		def user_params
			params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
		end
end
