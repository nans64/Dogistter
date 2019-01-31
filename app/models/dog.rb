class Dog < ApplicationRecord
  has_many :stroll
  has_many :dogsitters, through: :stroll
  belongs_to :city
end
