class User < ApplicationRecord
#  has_many :posts
#  has_many :comments
<<<<<<< HEAD
=======
#added validation for test to pass
>>>>>>> a80aac5e7bc8af39043f61436e2bd26900593864
validates_presence_of :first_name
validates_presence_of :last_name
end
