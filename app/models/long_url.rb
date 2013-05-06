class LongUrl < ActiveRecord::Base
  attr_accessible :link

  has_many :short_urls

  has_many :comments

  has_many :taggings
  has_many :tags, :through => :taggings

  validates :link, :presence => true
  validates :link, :uniqueness => true

  def comments
    Comment.where(:long_url_id => self.id)
  end
end