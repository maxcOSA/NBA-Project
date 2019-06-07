class ChangeColumnName2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams, :league_standing, :division_standing
  end
end
