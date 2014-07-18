class User < ActiveRecord::Base
  has_secure_password
  validates :email, format: {with: /[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,}/}
  validates_presence_of :email, :first_name, :password, :password_confirmation
end