class ChangeTypeToStyle < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bikes, :type, :style
  end
end
