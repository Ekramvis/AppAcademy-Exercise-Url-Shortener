class AddTaggingTable < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :long_url_id
      t.integer :tag_id
    end
  end
end
