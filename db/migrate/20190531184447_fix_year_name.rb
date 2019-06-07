class FixYearName < ActiveRecord::Migration[5.2]
  def change
    rename_column :seasons, :year, :year_id
  end
end
