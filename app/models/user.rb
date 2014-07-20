class User < ActiveRecord::Base

  has_many :nuts
  has_many :comments

  has_secure_password
  validates :email, format: {with: /[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,}/}
  validates_presence_of :email, :username, :first_name, :password, :password_confirmation
  validates_uniqueness_of :email, :username
end
