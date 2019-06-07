class ChangeFinalsAppearancesToBeIntegerInPlayers < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :finalsAppearances, :integer
  end
end
