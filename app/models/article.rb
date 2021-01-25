class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :user #campo adicional user_id
end
