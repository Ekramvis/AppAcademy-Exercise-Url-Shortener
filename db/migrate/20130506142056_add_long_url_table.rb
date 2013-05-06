class AddLongUrlTable < ActiveRecord::Migration
  def change
    create_table :long_urls do |t|
      t.integer :comment_id
      t.integer :tag_id
      t.string :link
    end
  end
end
