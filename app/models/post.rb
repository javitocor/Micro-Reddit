class Post < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :body, presence: true  
end
