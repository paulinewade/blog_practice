class User < ApplicationRecord
#  has_many :posts
#  has_many :comments
#added validation for test to pass
validates_presence_of :first_name
validates_presence_of :last_name
end
