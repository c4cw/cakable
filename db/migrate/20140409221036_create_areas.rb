class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :area, :limit => 128, :null => false

      t.timestamps
    end
  end
end
