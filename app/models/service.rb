class Service < ApplicationRecord
  has_many :user_services
  has_many :users, through: :user_services

  def self.sum_prices
  	self.sum(:price)
  end

end
