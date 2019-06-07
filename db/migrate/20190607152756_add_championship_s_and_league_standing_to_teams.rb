class AddChampionshipSAndLeagueStandingToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :championships, :integer
    add_column :teams, :finals_appearances, :integer
    add_column :teams, :league_standing, :integer
  end
end
