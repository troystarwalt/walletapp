class User < ActiveRecord::Base

	has_many :cards
	has_many :user_cards
end
