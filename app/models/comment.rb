class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true, length: {maximum: 300}
  validates :user_id, presence: true
  validates :post_id, presence: true
end
