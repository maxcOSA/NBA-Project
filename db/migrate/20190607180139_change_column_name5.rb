class ChangeColumnName5 < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams, :year_id, :season_id
  end
end
