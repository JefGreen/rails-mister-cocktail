class Dose < ApplicationRecord
  validates :description, :ingredient, presence: true
  # validates :email, uniqueness: true
  belongs_to :ingredient
  belongs_to :cocktail
  validates_uniqueness_of :cocktail, :scope => [:ingredient]
end
