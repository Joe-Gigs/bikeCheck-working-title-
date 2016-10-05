class AddDefaultValueCheck < ActiveRecord::Migration[5.0]
  def change
  	change_column :safety_checks, :checked, :boolean
  	change_column :safety_checks, :checked, :boolean, default: false

  end
end


