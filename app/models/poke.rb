class Poke < ApplicationRecord
    belongs_to :trainer
    belongs_to :species
    has_one :element, through: :species
    def name
        self.species.name
    end
    def element
        self.species.element.name
    end
end
