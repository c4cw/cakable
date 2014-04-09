class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :gender, :limit => 16, :null => false

      t.timestamps
    end
  end
end
