class Client < ActiveRecord::Base
  
  belongs_to :user
  has_many :sales
  has_many :farms
  
end
