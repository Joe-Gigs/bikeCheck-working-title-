class EditSafetyCheck < ActiveRecord::Migration[5.0]
  def change
  	

  	add_column :safety_checks, :quick_release, :boolean, default: false
  	add_column :safety_checks, :wheels_spin_right, :boolean, default: false
  	add_column :safety_checks, :brakes, :boolean, default: false
  	add_column :safety_checks, :chain, :boolean, default: false
  	add_column :safety_checks, :tools, :boolean, default: false
  end
end
