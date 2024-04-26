class Post < ApplicationRecord
    scope :ordered, -> { order(id: :desc) }
end
