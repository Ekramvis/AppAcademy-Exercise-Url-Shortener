class AddTimestampsToShortUrl < ActiveRecord::Migration
  def change
    add_timestamps :short_urls
  end
end
