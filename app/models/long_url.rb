class LongUrl < ActiveRecord::Base
  attr_accessible :link, :comments, :tags
  
  has_many :short_urls
  
  has_many :comments
  
end