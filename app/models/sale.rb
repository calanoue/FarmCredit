class Sale < ActiveRecord::Base
  
  belongs_to :client
  has_many :crops
  
  scope :corn, where(:crop_id => 1)
  scope :soybeans, where(:crop_id => 2)
  
end
