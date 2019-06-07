class Season < ApplicationRecord
    has_many :players, primary_key: :year_id
    has_many :teams, primary_key: :year_id
end
