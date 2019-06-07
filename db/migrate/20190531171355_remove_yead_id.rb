class RemoveYeadId < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :year_id
  end
end
