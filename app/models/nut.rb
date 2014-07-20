class Nut < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validate :at_least_one_attribute

  def at_least_one_attribute
    if (self.content == nil && self.url == nil)
      errors[:base] << ("Please enter at least one attribute")
    end
  end
end
