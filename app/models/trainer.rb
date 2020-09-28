class Trainer < ApplicationRecord
    has_many :pokes
    has_many :species, through: :pokes

    has_secure_password

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: {maximum: 15}

    def collected
        self.pokes.count
    end

    def pokemon_master?
        if self.collected == Species.all.count
            return true
        else
            return false
        end
    end


end
