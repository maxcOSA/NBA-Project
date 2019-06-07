class AddYearIdToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :year_id, :integer
  end
end
