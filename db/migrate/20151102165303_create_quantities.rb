class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.string :quantity
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps null: false
    end
  end
end
