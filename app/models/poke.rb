class Poke < ApplicationRecord
    belongs_to :trainer
    belongs_to :species
    has_one :element, through: :species
    validates :species_id, uniqueness: true
    
    def name
        self.species.name
    end
    def element
        self.species.element.name
    end
end
