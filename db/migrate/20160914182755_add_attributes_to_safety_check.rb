class AddAttributesToSafetyCheck < ActiveRecord::Migration[5.0]
  def change
  	add_column :safety_checks, :alert, :string
  	add_column :safety_checks,	:checked, :boolean
  end
end
