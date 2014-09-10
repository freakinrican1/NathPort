class BlogEntry < ActiveRecord::Base
  attr_accessible :content, :draft, :title
  
  validates :title, :presence => true
   validates :content, :presence => true
end
