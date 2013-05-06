class AddVisitTable < ActiveRecord::Migration
  def change
    create_table :vists do |t|
      t.datetime :timestamp
      t.integer :user_id
      t.integer :short_url_id
    end
  end
end
