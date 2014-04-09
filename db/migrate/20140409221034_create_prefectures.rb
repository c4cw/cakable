class CreatePrefectures < ActiveRecord::Migration
  def change
    create_table :prefectures do |t|
      t.string :prefecture, :limit => 32, :null => false

      t.timestamps
    end
  end
end
