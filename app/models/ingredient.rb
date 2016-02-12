class Ingredient < ActiveRecord::Base
  has_many :doses
  has_many :cocktails, through: :doses, dependent: :restrict_with_error

  validates :name, presence: true
  validates :name, uniqueness: true
end
