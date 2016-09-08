class AddUserBikeIdsSubscrip < ActiveRecord::Migration[5.0]
  def change
  	add_column :subscriptions, :user_id, :integer
  	add_column :subscriptions, :bike_id, :integer
  end
end
