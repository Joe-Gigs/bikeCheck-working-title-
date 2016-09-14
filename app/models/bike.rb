class Bike < ApplicationRecord
	has_many :subscriptions
  has_many :users, through: :subscriptions
  has_one :safety_check
end
