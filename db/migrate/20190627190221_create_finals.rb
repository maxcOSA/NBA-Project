class CreateFinals < ActiveRecord::Migration[5.2]
  def change
    create_table :finals do |t|
      t.integer :year
      t.string :winner
      t.string :loser
      t.string :MVP
      t.integer :games

      t.timestamps
    end
  end
end
