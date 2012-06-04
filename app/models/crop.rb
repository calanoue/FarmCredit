class Crop < ActiveRecord::Base
  belongs_to :sale
  has_many :farm_managements
  
end
