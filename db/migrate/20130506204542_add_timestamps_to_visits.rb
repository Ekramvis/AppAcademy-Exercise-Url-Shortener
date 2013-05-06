class AddTimestampsToVisits < ActiveRecord::Migration
  def change
    change_table :vists do |t|
      t.remove :timestamp
    end

    add_timestamps :vists
  end

end
