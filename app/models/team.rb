class Team < ApplicationRecord
    belongs_to :season, :optional => true
end
