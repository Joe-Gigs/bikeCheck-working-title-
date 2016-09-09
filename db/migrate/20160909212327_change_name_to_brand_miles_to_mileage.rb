class ChangeNameToBrandMilesToMileage < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bikes, :name, :brand
  	rename_column :bikes, :miles, :mileage
  end
end
