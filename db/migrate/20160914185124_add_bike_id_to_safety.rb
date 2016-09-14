class AddBikeIdToSafety < ActiveRecord::Migration[5.0]
  def change
  	add_column :safety_checks, :bike_id, :integer
  end
end
