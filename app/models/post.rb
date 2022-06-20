class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :cover
  has_rich_text :content
end
