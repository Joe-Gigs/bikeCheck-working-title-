class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|

      t.timestamps
    end
  end
end
