class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.integer :year
      t.string :MVP
      t.string :DPOY
      t.string :MIP
      t.string :COY
      t.string :ROY
      t.string :SMOY
      t.string :ASMVP
      t.string :FMVP

      t.timestamps
    end
  end
end
