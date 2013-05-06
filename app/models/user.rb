class User < ActiveRecord::Base
  attr_accessible :email, :username
  has_many :short_urls
  has_many :comments
end