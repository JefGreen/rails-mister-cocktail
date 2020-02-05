class Dose < ApplicationRecord
  validates :description, :ingredient, presence: true
  # validates :email, uniqueness: true
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient, uniqueness: { scope: :cocktail }
end
