class Card < ActiveRecord::Base
	belongs_to :deck

	validates :question, presence: true, uniqueness: true
	validates :answer, presence: true, uniqueness: true
	validates :deck_id, presence: true
end
