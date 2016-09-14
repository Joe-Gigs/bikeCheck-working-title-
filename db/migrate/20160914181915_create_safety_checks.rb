class CreateSafetyChecks < ActiveRecord::Migration[5.0]
  def change
    create_table :safety_checks do |t|

      t.timestamps
    end
  end
end
