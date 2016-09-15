class AddSafeBike < ActiveRecord::Migration[5.0]
  def change
  	add_column :bikes, :safe, :boolean, default: false
  end
end
