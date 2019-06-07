class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :conference
      t.string :division
      t.string :record
      t.string :finish
      t.integer :league_standing
      t.integer :conference_standing
      t.integer :league_standing

      t.timestamps
    end
  end
end
