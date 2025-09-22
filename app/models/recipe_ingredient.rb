class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :quantity_number, presence: true, numericality: { greater_than: 0 }
  validates :unit, presence: true

end
