class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.text :instructions
      t.integer :prep_time
      t.integer :cook_time
      t.string :difficulty
      t.integer :calories
      t.integer :servings
      t.string :image_url

      t.timestamps
    end
  end
end
