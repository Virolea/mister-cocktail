class Cocktail < ActiveRecord::Base
  validates :name, presence: true
end
