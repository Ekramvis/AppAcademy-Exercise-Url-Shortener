class Visit < ActiveRecord::Base
  attr_accessible :timestamp
  
  belongs_top :short_url
end