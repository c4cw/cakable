class CreateCakeCategories < ActiveRecord::Migration
  def change
    create_table :cake_categories do |t|
      t.string :category_name, :limit => 128, :null => false

      t.timestamps
    end
  end
end
