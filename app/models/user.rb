class User < ApplicationRecord
  has_many :user_services
  has_many :services, through: :user_services

  def first_name
  	self.name.split(" ").first
  end
  
end
