class ChangeColumnName4 < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams, :year_id_id, :year_id
  end
end
