class Element < ApplicationRecord
    has_many :species
    has_many :areas, through: :species
end
