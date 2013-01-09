class Customer < ActiveRecord::Base
  attr_accessible :email, :name, :text, :title
  
  has_many :tickets
end
