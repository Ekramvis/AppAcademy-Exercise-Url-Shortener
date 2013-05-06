class AddCommentTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :long_url_id
      t.string :body
    end
  end
end
