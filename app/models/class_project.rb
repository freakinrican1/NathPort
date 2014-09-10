class ClassProject < ActiveRecord::Base
  attr_accessible :description, :github, :name, :summary
  
  validates :name, :presence => true
end
