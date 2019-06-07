class RemoveYearIdNameFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :year_id, :integer
  end
end
