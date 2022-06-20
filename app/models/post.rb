class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  has_one_attached :cover
  has_rich_text :content
end
