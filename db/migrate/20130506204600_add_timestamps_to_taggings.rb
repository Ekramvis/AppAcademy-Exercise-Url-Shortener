class AddTimestampsToTaggings < ActiveRecord::Migration
  def change
    add_timestamps :taggings
  end
end
