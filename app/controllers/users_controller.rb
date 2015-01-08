class UsersController < ApplicationController
	def show
		user = User.find(params[:id])
		@deck = Deck.new
		@decks = UserDeck.where(user_id: params[:id])
		render 'show'
	end

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
			session[:user] = @user.id
			redirect_to user_path(@user.id)
		end
	end

	def destroy
		# <%= link_to 'delete account', user_path(current_user.id), :class => 'user-options-item', method: :delete, data: { confirm: "Are you sure you want to permanently delete your account? We will miss you." } %>
	end

	private

		def user_params
			params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
		end
end
