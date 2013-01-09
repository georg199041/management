class Customer < ActiveRecord::Base
  attr_accessible :email, :name, :text, :title
  
  has_many :tickets
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :title, :text, :presence => true
  
  validates :name,  :presence => true, 
                    :length   => { :maximum => 50 }
                    
  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }               
end
