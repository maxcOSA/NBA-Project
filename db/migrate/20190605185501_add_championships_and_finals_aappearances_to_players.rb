class AddChampionshipsAndFinalsAappearancesToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :championships, :integer
    add_column :players, :finalsAppearances, :decimal
  end
end
