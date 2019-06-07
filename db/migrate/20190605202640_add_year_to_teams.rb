class AddYearToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :year_id, foreign_key: true
  end
end
