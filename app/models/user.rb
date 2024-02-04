class User < ApplicationRecord
#  has_many :posts
#  has_many :comments
validates_presence_of :first_name
validates_presence_of :last_name
end
