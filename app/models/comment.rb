class Comment < ActiveRecord::Base
  belongs_to :nut
  belongs_to :user
end
