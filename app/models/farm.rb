class Farm < ActiveRecord::Base
  
  belongs_to :client
  belongs_to :county
  has_many :farm_managements
  has_many :breakeven_costs
  has_many :farm_insurances
  
end
