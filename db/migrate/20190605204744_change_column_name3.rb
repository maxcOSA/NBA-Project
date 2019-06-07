class ChangeColumnName3 < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams, :record, :reg_rec
  end
end
