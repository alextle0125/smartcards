module UsersHelper
	def first_time?
		user = User.find(session[:user]).first_time?
	end
end
