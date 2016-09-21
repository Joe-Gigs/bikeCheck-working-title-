class Subscription < ApplicationRecord
	belongs_to :user
	belongs_to :bike
	# belongs_to :safety_check
end
