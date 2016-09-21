class SafetyCheck < ApplicationRecord
	has_many :subscriptions
	belongs_to :bike, through: :subscriptions
end

	