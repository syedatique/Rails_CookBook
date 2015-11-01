class RemovePublishedOnFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :published_on, :date
  end
end
