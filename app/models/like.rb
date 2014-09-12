class Like < ActiveRecord::Base
  attr_accessible :blog_entry_id, :ip_address
  
  belongs_to :blog_entry
  
  validates :blog_entry_id, :presence => true
   validates :ip_address, :presence => true
   validates_uniqueness_of :blog_entry_id, :scope => :ip_address
   
end
