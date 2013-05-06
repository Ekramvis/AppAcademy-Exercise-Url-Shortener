class Visit < ActiveRecord::Base
  attr_accessible :timestamp

  belongs_to :short_url
end