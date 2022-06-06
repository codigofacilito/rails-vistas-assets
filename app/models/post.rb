class Post < ApplicationRecord
  has_one_attached :cover
  has_rich_text :content
end
