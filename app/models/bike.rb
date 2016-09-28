class Bike < ApplicationRecord
	after_create :add_safety_check
	has_many :subscriptions
  has_many :users, through: :subscriptions
  has_one :safety_check

	def add_safety_check
  	x = SafetyCheck.create bike_id: self.id
  end
end

