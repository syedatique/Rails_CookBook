class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :quantity
      t.integer :unit
      t.string :recipe_id

      t.timestamps null: false
    end
  end
end
