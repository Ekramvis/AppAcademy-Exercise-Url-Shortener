class AddTimestampsToTags < ActiveRecord::Migration
  def change
    add_timestamps :tags
  end
end
