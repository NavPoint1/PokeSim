class Species < ApplicationRecord
    belongs_to :area, required: false
    belongs_to :element
    has_many :pokes
    has_many :trainers, through: :pokes

    def catch_trigger
        rng = rand(1..100)
        if self.capture_rate > rng
            return true
        else
            return false
        end
    end

    def flee_trigger
        rng = rand(1..100)
        if self.flee_rate > rng
            return true
        else
            return false
        end
    end
end
