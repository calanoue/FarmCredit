class FarmManagement < ActiveRecord::Base
  belongs_to :farm
  belongs_to :crop
  
  scope :corn, where(:crop_id => 1)
  scope :soybeans, where(:crop_id => 2)
   
end
