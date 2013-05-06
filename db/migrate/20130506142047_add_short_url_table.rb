class AddShortUrlTable < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.integer :long_url_id
      t.integer :user_id
      t.string :link
      t.integer :visit_id
    end
  end
end
