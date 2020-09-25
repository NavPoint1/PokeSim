class Species < ApplicationRecord
    belongs_to :area
    belongs_to :element

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
