class UpdateRecipeIngredients < ActiveRecord::Migration[7.1]
  def change
    remove_column :recipe_ingredients, :quantity, :string

    add_column :recipe_ingredients, :quantity_number, :decimal
    add_column :recipe_ingredients, :unit, :string
  end
end
