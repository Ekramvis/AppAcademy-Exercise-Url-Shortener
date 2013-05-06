class RenameVistsToVisits < ActiveRecord::Migration
  def change
    rename_table :vists, :visits
  end
end
