class Post < ApplicationRecord
  validates :body, presence: true
  has_many :comments, as: :commentable
end
