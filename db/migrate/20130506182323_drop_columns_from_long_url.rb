class DropColumnsFromLongUrl < ActiveRecord::Migration
  def change
    change_table :long_urls do |t|
      t.remove :comment_id
      t.remove :tag_id
    end
  end
end
