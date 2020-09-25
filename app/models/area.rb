class Area < ApplicationRecord
    has_many :species
    has_many :elements, through: :species

    def encounter_trigger
        rng = rand(1..100)
        if self.encounter_rate > rng
            return true
        else
            return false
        end
    end

    def encounter_species
        pool = []
        self.species.each { |species|
            species.rarity.times do
                pool << species
            end
        }
        pool.sample
    end

    def description
        [
            "Your trek through the #{self.name.downcase} is uneventful.",
            "The #{self.name.downcase} is quiet... too quiet."
        ].sample
    end

end
