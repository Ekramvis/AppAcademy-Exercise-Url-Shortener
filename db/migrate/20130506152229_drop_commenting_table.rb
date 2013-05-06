class DropCommentingTable < ActiveRecord::Migration
  def change
    drop_table :commentings
  end
end
