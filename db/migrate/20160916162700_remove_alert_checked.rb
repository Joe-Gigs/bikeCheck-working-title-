class RemoveAlertChecked < ActiveRecord::Migration[5.0]
  def change
  	remove_column :safety_checks, :alert, :string

  	add_column :safety_checks, :tire_pressure, :boolean, default: false

  	remove_column :safety_checks, :checked, :boolean
  	
  	add_column :safety_checks, :tire_tread, :boolean, default: false
  end
end
