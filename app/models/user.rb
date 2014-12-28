class User < ActiveRecord::Base
  has_secure_password
  has_many :decks
  has_many :authored_decks, class_name: "Deck", foreign_key: "author_id"

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
