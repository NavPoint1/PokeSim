class Trainer < ApplicationRecord
    has_many :pokes
    has_many :species, through: :pokes

end
