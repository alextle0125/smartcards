class Deck < ActiveRecord::Base
	has_many :cards
	has_many :users
	belongs_to :author, class_name: "User"
end
