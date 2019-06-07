class ChangeFinalsAppearancesToBeIntegerPlayers < ActiveRecord::Migration[5.2]
  def up 
    change_column :players, :finalsAppearances, :integer 
  end 
  def down 
    change_column :players, :finalsAppearances, :decimal 
  end 

end
