class RemoveTitleFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :title, :string
    add_column :recipes, :name, :string
  end
end
