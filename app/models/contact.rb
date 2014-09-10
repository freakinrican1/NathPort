class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name
  
  validates :name, :presence => true
   validates :message, :presence => true
end
