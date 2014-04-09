class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string :occupation, :limit => 128, :null => false

      t.timestamps
    end
  end
end
