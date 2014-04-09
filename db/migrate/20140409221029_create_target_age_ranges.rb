class CreateTargetAgeRanges < ActiveRecord::Migration
  def change
    create_table :target_age_ranges do |t|
      t.string :target_age_range, :limit => 32, :null => false

      t.timestamps
    end
  end
end
