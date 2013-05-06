class LongUrl < ActiveRecord::Base
  attr_accessible :link, :comments, :tags
  
  has_many :short_urls

  has_many :comments

  has_many :taggings
  has_many :tags, :through => :taggings
  
  validates :link, :presence => true
  validates :link, :uniqueness => true

  
end