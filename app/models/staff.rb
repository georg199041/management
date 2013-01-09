class Staff < ActiveRecord::Base
  attr_accessible :name, :password
  
  validates :name,  :presence => true,
                    :length   => { :maximum => 50 }
  validates :password, :presence => true,
                    :uniqueness => { :case_sensitive => false }
end
