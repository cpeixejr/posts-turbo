class Post < ApplicationRecord
  scope :ordered, -> { order(id: :desc) }
  validates :title, :body, presence: true

  broadcasts_to -> (post) { "posts" }, inserts_by: :prepend
end
