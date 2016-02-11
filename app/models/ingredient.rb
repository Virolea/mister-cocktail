class Ingredient < ActiveRecord::Base
  has_many :doses
  before_destroy :check_for_doses

  validates :name, presence: true
  validates :name, uniqueness: true

  private

  def check_for_doses
    if doses.count > 0
      errors.add_to_base("cannot delete an ingredient if it belongs to at least one cocktail")
      false
    end
  end
end
