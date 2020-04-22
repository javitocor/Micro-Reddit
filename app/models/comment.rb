class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :comments, class_name: 'Comment', foreign_key: 'comment_id'
  belongs_to :comment, class_name: 'Comment', optional: true

  validates :content, presence: true, length: { maximum: 300 }
  validates :user_id, presence: true
  validates :post_id, presence: true
end
