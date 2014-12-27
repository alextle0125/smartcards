class Deck < ActiveRecord::Base
	has_many :cards
	has_many :users
	belongs_to :author, class_name: "User"

	validates :title, presence: true, uniqueness: true
	validates :description, presence: true
end
