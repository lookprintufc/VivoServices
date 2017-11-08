class UserService < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates_uniqueness_of :user_id, scope: :service_id, message: "ID %{value} ja possui esse serviço"
end
