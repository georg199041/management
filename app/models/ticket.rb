class Ticket < ActiveRecord::Base
  attr_accessible :customer_id, :status, :text, :title
  
  belongs_to :customers
  
  validates :text, :length => { :maximum => 140 }
  validates :text, :title, :presence => true

end
