class Player < ApplicationRecord
    belongs_to :season, :optional => true
end