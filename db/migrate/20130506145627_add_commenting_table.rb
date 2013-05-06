class AddCommentingTable < ActiveRecord::Migration
  def change
    create_table :commentings do |t|
      t.integer :long_url_id
      t.integer :comment_id
    end
  end
end
