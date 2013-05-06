class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :taggings
  has_many :long_urls, :through => :taggings
end