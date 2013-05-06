class ShortUrl < ActiveRecord::Base
  attr_accessible :link
  
  belongs_to :user
  belongs_to :long_url
  
  has_many :visits
  
end