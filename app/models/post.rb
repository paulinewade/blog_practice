class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates_presence_of :title
  validates_presence_of :body

  scope :reviewed, ->(timestamp = Time.now) { where('last_reviewed_at <= ?', timestamp) }
  scope :unreviewed, ->(timestamp = Time.now) { where('last_reviewed_at IS NULL OR last_reviewed_at > ?', timestamp) }

#  belongs_to :user
end
