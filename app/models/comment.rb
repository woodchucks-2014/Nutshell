class Comment < ActiveRecord::Base
  validates_presence_of :content
  belongs_to :nut
  belongs_to :user
end
