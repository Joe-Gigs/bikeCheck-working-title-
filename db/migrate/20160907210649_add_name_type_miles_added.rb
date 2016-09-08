class AddNameTypeMilesAdded < ActiveRecord::Migration[5.0]
  def change
  	add_column :bikes, :name, :string
  	add_column :bikes, :type, :string
  	add_column :bikes, :miles, :integer
  end
end
