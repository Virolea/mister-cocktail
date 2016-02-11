class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail

  validates :ingredient_id, :cocktail_id, :description, presence: true
end
