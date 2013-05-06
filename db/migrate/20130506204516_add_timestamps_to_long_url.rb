class AddTimestampsToLongUrl < ActiveRecord::Migration
  def change
    add_timestamps :long_urls
  end
end
